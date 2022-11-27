package com.zhuche.server.api.v1.mini.program;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.order.CreateOrderRequest;
import com.zhuche.server.dto.request.order.UpdateOrderReletRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.OrderService;
import com.zhuche.server.validators.order.*;
import com.zhuche.server.validators.social.AccessSocialType;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.io.IOException;
import java.net.URISyntaxException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import java.util.Objects;

@RestController("miniProgramOrder")
@RequestMapping("/api/v1/miniProgram/orders")
@Slf4j
@Validated
@AllArgsConstructor
public class Order {
    private final OrderService orderService;

    /**
     * 订单生成
     * @param socialType
     * @param request
     * @return
     * @throws AlipayApiException
     */
    @PostMapping("/{socialType}/orders")
    @Permission( roles = {Role.ROLE_USER} )
    public UnityResponse createOrder(
        @PathVariable("socialType") @AccessSocialType String socialType,
        @Valid @RequestBody CreateOrderRequest request
    ) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException, URISyntaxException {
        com.zhuche.server.model.Order newOrder = null;
        if (Objects.equals(socialType, SocialType.ALIPAY.toString())) {
           newOrder = orderService.createAlipayOrder(request);
        } else if (Objects.equals(socialType, SocialType.WECHAT.toString())) {
            newOrder = orderService.createWechatOrder(request);
        }


       return UnityResponse.builder()
           .data(newOrder)
           .build();
    }

    @GetMapping
    @Permission( roles = {Role.ROLE_USER} )
    public UnityResponse getOrders( ) {
        final List<com.zhuche.server.model.Order> newOrders = orderService.getMyOrders();

        return UnityResponse.builder()
            .data(newOrders)
            .build();
    }

    @GetMapping("/{id}")
    @Permission( roles = {Role.ROLE_USER} )
    public UnityResponse getOrder(
        @PathVariable("id") Long id
    ) {
        final com.zhuche.server.model.Order order = orderService.getOrderById(id);

        return UnityResponse.builder()
            .data(order)
            .build();
    }


    /**
     * 取消订单
     * @param id
     * @return
     */
    @PutMapping("/{socialType}/{id}/canceling")
    @Permission( roles = {Role.ROLE_USER} )
    public UnityResponse cancelOrder(
        @PathVariable("socialType") @AccessSocialType String socialType,
        @PathVariable("id") @CheckOrderMustBelongMeById Long id
    ) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        com.zhuche.server.model.Order order = orderService.cancelOrderById(id);

        return UnityResponse.builder()
            .data(order)
            .build();
    }

    /**
     * 还车
     * @param id
     * @return
     */
    @PutMapping("/{id}/status/returning")
    public UnityResponse carReturning(
        @PathVariable("id") @CheckOrderMustBelongMeById @CheckOrderStatusMustBeUsing Long id
    ) {
        final com.zhuche.server.model.Order  order = orderService.setOrderStatusToReturning(id);

        return UnityResponse.builder()
            .data(order)
            .build();
    }

    /**
     * 补交订单超时费用
     * @param id
     * @return
     */
    @PostMapping("/{id}/trade/overtime")
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse payExpiredFee(
        @PathVariable("id") @CheckOrderMustBelongMeById @CheckOrderStatusMustBeExpired Long id
    ) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final String trade = orderService.createExpiredTrade(id);
        return UnityResponse.builder()
            .data(trade)
            .build();
    }


    /**
     * 订单续租
     * @param id
     * @return
     * @throws AlipayApiException
     */
    @PutMapping("/{id}/expired")
    public UnityResponse relet(
        @PathVariable("id") @CheckOrderMustBelongMeById Long id,
        @RequestBody @Valid UpdateOrderReletRequest updateOrderReletRequest
    ) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final String payInfo = orderService.createReletTrade(id, updateOrderReletRequest);

        return UnityResponse.builder()
            .data(payInfo)
            .build();
    }

}
