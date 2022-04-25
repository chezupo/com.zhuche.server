package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.OrderService;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
