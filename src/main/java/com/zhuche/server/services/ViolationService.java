package com.zhuche.server.services;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayTradePayRequest;
import com.alipay.api.response.AlipayTradePayResponse;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.request.violation.CreateViolationRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.Order;
import com.zhuche.server.model.User;
import com.zhuche.server.model.Violation;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.repositories.ViolationRepository;
import com.zhuche.server.util.JWTUtil;
import com.zhuche.server.util.PaginationUtil;
import com.zhuche.server.util.TradeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class ViolationService {
   @Autowired private  ViolationRepository violationRepository;
   @Autowired private  OrderRepository orderRepository;
   @Autowired private  AlipayClient alipayClient;
   @Value("${alipay.alipayViolationNoticeUrl}") private  String alipayViolationNoticeUrl;
   @Autowired private  PaginationUtil paginationUtil;
   @Autowired private  JWTUtil jwtUtil;

    /**
     * 添加违章
     * @param id
     * @param request
     * @return
     * @throws AlipayApiException
     */
    @Transactional
    public Violation createViolation(Long id, CreateViolationRequest request) {
        final Order order = orderRepository.findById(id).get();
        final String images = JSON.toJSONString( request.getImages() );
        final Violation violation = Violation.builder()
            .title(request.getTitle())
            .description(request.getDescription())
            .amount(request.getAmount())
            .alipayOutTradeNo(TradeUtil.generateOutTradeNo())
            .freezeAmount(order.getUnfreezeAmount())
            .images(images)
            .user(order.getUser())
            .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
            .order(order)
            .build();
        violationRepository.save(violation);

        return violation;
    }
//    public Violation createViolation(Long id, CreateViolationRequest request) throws AlipayApiException {
//        final Order order = orderRepository.findById(id).get();
//        if (order.getUnfreezeAmount() < request.getAmount()) {
//            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, String.format(
//                "请求解冻资金%s已经超剩下未解冻的额度%s",
//                request.getAmount(),
//                order.getUnfreezeAmount()
//            ));
//        }
//        AlipayTradePayRequest alipayRequest = new AlipayTradePayRequest();
//        alipayRequest.setNotifyUrl(alipayViolationNoticeUrl);
//        JSONObject bizContent = new JSONObject();
//        TradeUtil.generateOutTradeNo();
//        order.setUnfreezeAmount(order.getUnfreezeAmount() - request.getAmount());
//        final Violation violation = Violation.builder()
//            .title(request.getTitle())
//            .description(request.getDescription())
//            .amount(request.getAmount())
//            .alipayOutTradeNo(TradeUtil.generateOutTradeNo())
//            .freezeAmount(order.getUnfreezeAmount())
//            .user(order.getUser())
//            .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
//            .order(order)
//            .build();
//        violation.setImages(request.getImages());
//        bizContent.put("out_trade_no", violation.getAlipayOutTradeNo());
//        bizContent.put("total_amount", violation.getAmount());
//        bizContent.put("subject", String.format(
//            "%s-违章扣款",
//            order.getTitle()
//        ));
//        bizContent.put("product_code", "PRE_AUTH_ONLINE");
//        bizContent.put("auth_no", order.getAuthNo());
//        bizContent.put("auth_confirm_mode", "NOT_COMPLETE");
//        alipayRequest.setBizContent(bizContent.toString());
//        AlipayTradePayResponse response = alipayClient.certificateExecute(alipayRequest);
//        if(response.isSuccess()){
//            orderRepository.save(order);
//            return violationRepository.save(violation);
//        } else {
//            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "调用失败");
//        }
//    }

    /**
     * 获取违章分页记录
     * @param page
     * @param size
     */
    public PageFormat getPageData(Integer page, Integer size) {
        return paginationUtil.getPageFormat(violationRepository, page, size);
    }

    public List<Violation> getMyViolations() {
        final User me = jwtUtil.getUser();

        return violationRepository.findAllByUserId(me.getId());
    }
}
