/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/27
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.StoreCarConfigService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.server.PathParam;

@RestController
@RequestMapping("/api/v1/storeCarConfigs")
@Validated
@RequiredArgsConstructor
@Slf4j
public class StoreCarConfig {
    private final StoreCarConfigService storeCarConfigService;

    @GetMapping
    @Permission(roles = {Role.ROLE_ADMIN, Role.ROLE_BUSINESS})
    public UnityResponse getStoreConfigs(
        @PathParam("page") Integer page,
        @PathParam("size") Integer size
    ) {

        final var data = storeCarConfigService.getStoreConfigs(page, size);
        return UnityResponse.builder()
            .data(data)
            .build();
    }
}