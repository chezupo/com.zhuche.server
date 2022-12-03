package com.zhuche.server.api.v1.admin;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.order.ConfirmOrderRequest;
import com.zhuche.server.dto.request.order.UpdateOrderReletRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.services.OrderService;
import com.zhuche.server.validators.order.*;
import lombok.AllArgsConstructor;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.websocket.server.PathParam;
import java.time.LocalDateTime;

@RestController
@RequestMapping("/api/v1/orders")
@Validated
@AllArgsConstructor
public class Order {
    private final OrderService orderService;
    private final OrderRepository orderRepository;

    @GetMapping
    @Permission(roles = {
        Role.ROLE_BUSINESS,
        Role.ROLE_ADMIN
    })
    public UnityResponse getOrders(
        @PathParam("page") Integer page,
        @PathParam("size") Integer size,
        @Param("tradeNo") String tradeNo
    ) {
        final var data = this.orderService.getOrderPageData(page, size, tradeNo);

        return UnityResponse.builder()
            .data(data)
            .build();
    }

    @PutMapping("/{id}/status/using")
    @Permission(roles = {
        Role.ROLE_BUSINESS,
        Role.ROLE_ADMIN,
    },
        isLog = true,
        title = "确认取车",
        type = LogType.UPDATED
    )
    public UnityResponse confirmPickUpCarOrder(
        @PathVariable("id") @CheckOrderStatusMustBePickUp @CheckOrderBelongsToMeForStartStore Long id,
        @RequestBody @Valid ConfirmOrderRequest request
    ) {
        final com.zhuche.server.model.Order order = orderService.confirmPickUpCarOrder(id, request);

        return UnityResponse.builder()
            .data(order)
            .build();
    }

    @PutMapping("/{id}/status/finished")
    @Permission(roles = {
        Role.ROLE_BUSINESS,
        Role.ROLE_ADMIN,
    },
        isLog = true,
        title = "确认还车",
        type = LogType.UPDATED
    )
    public UnityResponse finishedOrder(
        @PathVariable("id") @CheckOrderStatusMustBeUsingOrReturning @CheckOrderBelongsToMeForStartStore Long id
    ) {
        final com.zhuche.server.model.Order order = orderService.finishedOrder(id);

        return UnityResponse.builder()
            .data(order)
            .build();
    }

    @PutMapping("/{id}/status/unfreeze")
    @Permission(roles = {
        Role.ROLE_BUSINESS,
        Role.ROLE_ADMIN,
    },
        isLog = true,
        title = "解冻订单",
        type = LogType.UPDATED
    )
    public UnityResponse unfreezeOrder(
        @PathVariable("id") @CheckOrderStatusMustBeFinished @CheckOrderBelongsToMeForStartStore Long id
    ) throws AlipayApiException {
        final com.zhuche.server.model.Order order = orderService.unfreezeOrder(id);

        return UnityResponse.builder()
            .data(order)
            .build();
    }

    @PutMapping("/{id}/status/renewing")
    @Permission(roles = {
        Role.ROLE_BUSINESS,
        Role.ROLE_ADMIN,
    },
        isLog = true,
        title = "续租订单",
        type = LogType.UPDATED
    )
    public UnityResponse renewingOrder(
        @PathVariable("id") @CheckOrderStatusMustBeUsingOrOverTime @CheckOrderBelongsToMeForStartStore Long id,
        @RequestBody @Valid UpdateOrderReletRequest updateOrderReletRequest
    ) {
        final com.zhuche.server.model.Order order = orderService.renewingOrder(id, updateOrderReletRequest);

        return UnityResponse.builder()
            .data(order)
            .build();
    }

    @DeleteMapping("/{id}")
    @Permission(roles = {
        Role.ROLE_BUSINESS,
        Role.ROLE_ADMIN,
    },
        isLog = true,
        title = "删除订单",
        type = LogType.DELETED
    )
    public UnityResponse deleteOrder(
        @PathVariable("id") @CheckOrderStatusMustBeCancel @CheckOrderBelongsToMeForStartStore Long id
    ) {
        com.zhuche.server.model.Order order = orderRepository.findById(id).get();
        order.setDeletedAt(LocalDateTime.now());
        orderRepository.save(order);

        return UnityResponse.builder()
            .data(order)
            .build();
    }
}
