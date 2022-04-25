package com.zhuche.server.api.v1.mini.program;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.order.CreateOrderRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.OrderService;
import com.zhuche.server.validators.social.AccessSocialType;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController("miniProgramOrder")
@RequestMapping("/api/v1/miniProgram/orders")
@Slf4j
@Validated
@AllArgsConstructor
public class Order {
    private final OrderService orderService;

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
}
