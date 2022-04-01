/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/31
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;


import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.brand.series.CreateSeriesRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.BrandSeriesService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/brands")
@AllArgsConstructor
@Validated
public class BrandSeries {
    private final BrandSeriesService brandSeriesService;

    @PostMapping("/{id}/series")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN},
        isLog = true,
        title = "创建车系列",
        type = LogType.CREATED
    )
    public UnityResponse create(
        @RequestBody @Valid CreateSeriesRequest request,
        @PathVariable("id") Integer id
    ) {
        final var newBrandSeries = brandSeriesService.createBrandSeries(id, request);
        return UnityResponse.builder()
            .data(newBrandSeries)
            .build();
    }


    @PatchMapping("/series/{id}")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN},
        isLog = true,
        title = "修改车系列",
        type = LogType.UPDATED
    )
    public UnityResponse updateBrandSeries(
        @RequestBody @Valid CreateSeriesRequest request,
        @PathVariable("id") Integer id
    ) {
        final com.zhuche.server.model.BrandSeries newBrandSeries = brandSeriesService.updateBrandSeries(id, request);
        return UnityResponse.builder()
            .data(newBrandSeries)
            .build();
    }

    @DeleteMapping("/series/{id}")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN},
        isLog = true,
        title = "删除车系列",
        type = LogType.DELETED
    )
    public UnityResponse destroyBrandSeries(
        @PathVariable("id") Integer id
    ) {
        brandSeriesService.destroy(id);
        return UnityResponse.builder()
            .build();
    }
}
