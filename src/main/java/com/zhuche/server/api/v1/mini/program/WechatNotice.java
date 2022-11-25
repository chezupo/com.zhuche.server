package com.zhuche.server.api.v1.mini.program;

import com.alibaba.fastjson.JSON;
import com.zhuche.server.dto.response.order.WechatNotifyRequestBody;
import com.zhuche.server.dto.response.order.WechatPayResourceCiphertext;
import com.zhuche.server.model.OrderStatus;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.util.AesUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Objects;

@RestController("miniProgramWechatNotice")
@RequestMapping("/api/v1/miniProgram/wechatNotice")
@Validated
@Slf4j
public class WechatNotice {
    @Value("${wx.pay.apiV3Key}")
    String apiV3Key;

    @Autowired OrderRepository orderRepository;

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
                orderRepository.save(order);
                log.info("Changed order status: {}, data: {}", order.getStatus(), order);
            }
        }
        return "";
    }
}
