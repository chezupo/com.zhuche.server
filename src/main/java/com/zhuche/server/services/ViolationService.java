package com.zhuche.server.services;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayTradePayRequest;
import com.alipay.api.response.AlipayTradePayResponse;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.request.violation.CreateViolationRequest;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.Order;
import com.zhuche.server.model.Violation;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.repositories.ViolationRepository;
import com.zhuche.server.util.TradeUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Service
public class ViolationService {
    private final ViolationRepository violationRepository;
    private final OrderRepository orderRepository;
    private final AlipayClient alipayClient;
    private final String alipayViolationNoticeUrl;

    public ViolationService(
        ViolationRepository violationRepository,
        OrderRepository orderRepository,
        AlipayClient alipayClient,
        @Value("${alipay.alipayViolationNoticeUrl}") String alipayViolationNoticeUrl
    ) {
        this.violationRepository = violationRepository;
        this.orderRepository = orderRepository;
        this.alipayClient = alipayClient;
        this.alipayViolationNoticeUrl = alipayViolationNoticeUrl;
    }


    @Transactional
    public Violation createViolation(Long id, CreateViolationRequest request) throws AlipayApiException {
        final Order order = orderRepository.findById(id).get();
        if (order.getUnfreezeAmount() < request.getAmount()) {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, String.format(
                "请求解冻资金%s已经超剩下未解冻的额度%s",
                request.getAmount(),
                order.getUnfreezeAmount()
            ));
        }
        AlipayTradePayRequest alipayRequest = new AlipayTradePayRequest();
        alipayRequest.setNotifyUrl(alipayViolationNoticeUrl);
        JSONObject bizContent = new JSONObject();
        TradeUtil.generateOutTradeNo();
        order.setUnfreezeAmount(order.getUnfreezeAmount() - request.getAmount());
        final Violation violation = Violation.builder()
            .title(request.getTitle())
            .description(request.getDescription())
            .amount(request.getAmount())
            .alipayOutTradeNo(TradeUtil.generateOutTradeNo())
            .freezeAmount(order.getUnfreezeAmount())
            .user(order.getUser())
            .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
            .order(order)
            .build();
        violation.setImages(request.getImages());
        bizContent.put("out_trade_no", violation.getAlipayOutTradeNo());
        bizContent.put("total_amount", violation.getAmount());
        bizContent.put("subject", String.format(
            "%s-违章扣款",
            order.getTitle()
        ));
        bizContent.put("product_code", "PRE_AUTH_ONLINE");
        bizContent.put("auth_no", order.getAuthNo());
        bizContent.put("auth_confirm_mode", "NOT_COMPLETE");
        alipayRequest.setBizContent(bizContent.toString());
        AlipayTradePayResponse response = alipayClient.certificateExecute(alipayRequest);
        if(response.isSuccess()){
            orderRepository.save(order);
            return violationRepository.save(violation);
        } else {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "调用失败");
        }
    }
}
