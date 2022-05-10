package com.zhuche.server.api.v1.mini.program;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.order.CreateOrderRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.OrderService;
import com.zhuche.server.validators.order.CheckOrderMustBelongMeById;
import com.zhuche.server.validators.order.CheckOrderStatusMustBeExpired;
import com.zhuche.server.validators.order.CheckOrderStatusMustBeUsing;
import com.zhuche.server.validators.social.AccessSocialType;
import com.zhuche.server.validators.store.HasStoreValidator;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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
    ) throws AlipayApiException {
        final var newOrder = orderService.createAlipayOrder(request);
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
    ) throws AlipayApiException {
        if (Objects.equals(socialType, SocialType.ALIPAY.toString())) {
            final com.zhuche.server.model.Order order = orderService.cancelOrderById(id);

            return UnityResponse.builder()
                .data(order)
                .build();
        }
        throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "取消订单错误");
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
    ) throws AlipayApiException {
        final String trade = orderService.createAlipayExpiredTrade(id);
        return UnityResponse.builder()
            .data(trade)
            .build();
    }


}
