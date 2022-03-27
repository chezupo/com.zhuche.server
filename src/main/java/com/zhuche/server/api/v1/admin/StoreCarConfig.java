/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/27
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.store.car.config.CreateStoreCarConfigRequest;
import com.zhuche.server.dto.request.store.car.config.UpdateStoreCarConfigRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.StoreCarConfigService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.persistence.criteria.CriteriaBuilder;
import javax.validation.Valid;
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

    @PostMapping
    @Permission(roles = {Role.ROLE_BUSINESS})
    public UnityResponse createStoreConfigs(
        @RequestBody @Valid CreateStoreCarConfigRequest request
    ) {
        final com.zhuche.server.model.StoreCarConfig newConfig = storeCarConfigService.createStoreCarConfig(request);
        return UnityResponse.builder()
            .data(newConfig)
            .build();
    }

    @PatchMapping("/{id}")
    @Permission(roles = {Role.ROLE_ADMIN, Role.ROLE_BUSINESS})
    public UnityResponse updateStoreConfigs(
        @PathVariable("id") Integer id,
        @RequestBody UpdateStoreCarConfigRequest request
        ) {

        final var data = storeCarConfigService.updateStoreConfigs(id, request);
        return UnityResponse.builder()
            .data(data)
            .build();
    }
}
