package com.zhuche.server.api.v1.mini.program;

import com.alibaba.fastjson.JSON;
import com.zhuche.server.dto.response.order.WechatNotifyRequestBody;
import com.zhuche.server.dto.response.order.WechatPayResourceCiphertext;
import com.zhuche.server.model.OrderStatus;
import com.zhuche.server.model.PayType;
import com.zhuche.server.model.RenewalOrder;
import com.zhuche.server.model.TransactionStatus;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.repositories.RenewalOrderRepository;
import com.zhuche.server.repositories.TransactionRepository;
import com.zhuche.server.util.AesUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.transaction.Transactional;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Objects;

@RestController("miniProgramWechatNotice")
@RequestMapping("/api/v1/miniProgram/wechatNotice")
@Validated
@Slf4j
public class WechatNotice {
    @Value("${wx.pay.apiV3Key}")
    String apiV3Key;

    @Autowired OrderRepository orderRepository;

    @Autowired RenewalOrderRepository renewalOrderRepository;
    @Autowired TransactionRepository transactionRepository;

    @PostMapping
    public String payNotify(
        @RequestBody String requestBody
    ) throws GeneralSecurityException, IOException {
        final WechatNotifyRequestBody request =JSON.parseObject(requestBody, WechatNotifyRequestBody.class);
        if (Objects.equals(request.event_type, "TRANSACTION.SUCCESS")) {
            log.info("wechat notify: {}", request);
            final AesUtil aesUtil = new AesUtil(apiV3Key.getBytes());
            final String resourceStr =  aesUtil.decryptToString(
                request.resource.associated_data.getBytes(),
                request.resource.getNonce().getBytes(),
                request.resource.getCiphertext()
            );
            final WechatPayResourceCiphertext  clipertext = JSON.parseObject(resourceStr, WechatPayResourceCiphertext.class);
            var order = orderRepository.findByOutTradeNo(clipertext.out_trade_no);
            if (order.getStatus() == OrderStatus.PAYING ) {
                order.setStatus(OrderStatus.CAR_PICKUP_IN_PROGRESS);
                order.setWechatTransactionId(clipertext.transaction_id);
                orderRepository.save(order);
                log.info("Changed order status: {}, data: {}", order.getStatus(), order);
            }
        }
        return "";
    }

    /**
     * 续费通知
     * @param requestBody
     * @return
     * @throws GeneralSecurityException
     * @throws IOException
     */
    @PostMapping("/renewalNotify")
    @Transactional
    public String renewalNotify(
        @RequestBody String requestBody
    ) throws GeneralSecurityException, IOException {
        final WechatNotifyRequestBody request =JSON.parseObject(requestBody, WechatNotifyRequestBody.class);
        if (Objects.equals(request.event_type, "TRANSACTION.SUCCESS")) {
            log.info("wechat notify: {}", request);
            final AesUtil aesUtil = new AesUtil(apiV3Key.getBytes());
            final String resourceStr =  aesUtil.decryptToString(
                request.resource.associated_data.getBytes(),
                request.resource.getNonce().getBytes(),
                request.resource.getCiphertext()
            );
            final WechatPayResourceCiphertext clipertext = JSON.parseObject(resourceStr, WechatPayResourceCiphertext.class);
            final RenewalOrder renewalOrder = renewalOrderRepository.findByOutTradeNo(clipertext.out_trade_no);
            log.info("{}", renewalOrder);
            if (!renewalOrder.isOk()) {
                renewalOrder.setOk(true);
                var order = orderRepository.findById(renewalOrder.getOrderId()).get();
                order.setEndTimeStamp( order.getEndTimeStamp() + renewalOrder.getDays() * 60 * 60 * 24 * 1000 );
                orderRepository.save(order);
                renewalOrderRepository.save(renewalOrder);
                int balance = (int)( order.getUser().getBalance()* 100);
                transactionRepository.save(
                    com.zhuche.server.model.Transaction.
                        builder()
                        .remark("")
                        .user(order.getUser())
                        .status( TransactionStatus.FINISHED )
                        .balance(balance)
                        .amount(-(renewalOrder.getTotal() * .01 ))
                        .title("续租")
                        .payType(PayType.WECHAT)
                        .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                        .outTradeNo(renewalOrder.getOutTradeNo())
                        .tradeNo("")
                        .build()
                );
                log.info("Changed order status: {}, data: {}", order.getStatus(), order);
            }
        }
        return "";
    }

    /**
     * 逾期费用补交通知
     * @param requestBody
     * @return
     * @throws GeneralSecurityException
     * @throws IOException
     */
    @PostMapping("/overtimeNotify")
    @Transactional
    public String overtimeNotify(
        @RequestBody String requestBody
    ) throws GeneralSecurityException, IOException {
        final WechatNotifyRequestBody request =JSON.parseObject(requestBody, WechatNotifyRequestBody.class);
        if (Objects.equals(request.event_type, "TRANSACTION.SUCCESS")) {
            log.info("wechat notify: {}", request);
            final AesUtil aesUtil = new AesUtil(apiV3Key.getBytes());
            final String resourceStr =  aesUtil.decryptToString(
                request.resource.associated_data.getBytes(),
                request.resource.getNonce().getBytes(),
                request.resource.getCiphertext()
            );
            final WechatPayResourceCiphertext clipertext = JSON.parseObject(resourceStr, WechatPayResourceCiphertext.class);
            final RenewalOrder renewalOrder = renewalOrderRepository.findByOutTradeNo(clipertext.out_trade_no);
            log.info("{}", renewalOrder);
            if (!renewalOrder.isOk()) {
                renewalOrder.setOk(true);
                var order = orderRepository.findById(renewalOrder.getOrderId()).get();
                order.setEndTimeStamp( order.getEndTimeStamp() + renewalOrder.getDays() * 60 * 60 * 24 * 1000 );
                orderRepository.save(order);
                renewalOrderRepository.save(renewalOrder);
                int balance = (int)(order.getUser().getBalance()* 100);
                transactionRepository.save(
                    com.zhuche.server.model.Transaction.
                        builder()
                        .remark("")
                        .user(order.getUser())
                        .status( TransactionStatus.FINISHED )
                        .balance(balance)
                        .amount(-(renewalOrder.getTotal() * .01 ))
                        .title("过期费用补交")
                        .payType(PayType.WECHAT)
                        .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                        .outTradeNo(renewalOrder.getOutTradeNo())
                        .tradeNo("")
                        .build()
                );
                log.info("Changed order status: {}, data: {}", order.getStatus(), order);
            }
        }
        return "";
    }
}
