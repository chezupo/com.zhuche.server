package com.zhuche.server.api.v1.admin;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.OrderService;
import com.zhuche.server.validators.order.CheckOrderBelongsToMeForStartStore;
import com.zhuche.server.validators.order.CheckOrderStatusMustBeFinished;
import com.zhuche.server.validators.order.CheckOrderStatusMustBePickUp;
import com.zhuche.server.validators.order.CheckOrderStatusMustBeReturning;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;

@RestController
@RequestMapping("/api/v1/orders")
@Validated
@AllArgsConstructor
public class Order {
    private final OrderService orderService;

    @GetMapping
    @Permission(roles = {
        Role.ROLE_BUSINESS,
        Role.ROLE_ADMIN
    })
    public UnityResponse getOrders(
        @PathParam("page") Integer page,
        @PathParam("size") Integer size
    ) {
        final var data = this.orderService.getOrderPageData(page, size);

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
        @PathVariable("id") @CheckOrderStatusMustBePickUp @CheckOrderBelongsToMeForStartStore Long id
    ) {
        final com.zhuche.server.model.Order order = orderService.confirmPickUpCarOrder(id);

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
        @PathVariable("id") @CheckOrderStatusMustBeReturning @CheckOrderBelongsToMeForStartStore Long id
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
}
