/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/22
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.brand.CreateBrandRequest;
import com.zhuche.server.dto.request.brand.UpdateBrandRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.BrandService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.websocket.server.PathParam;

@RestController("adminBrand")
@RequestMapping("/api/v1/brands")
@AllArgsConstructor
@Validated
public class Brand {
    private final BrandService brandService;

    @PostMapping
    @Permission(
        roles = {Role.ROLE_BUSINESS},
        isLog = true,
        title = "创建品牌",
        type = LogType.CREATED
    )
    public UnityResponse create(
        @RequestBody @Valid CreateBrandRequest request
    ) {
        final var newBrand = brandService.createBrand(request);

        return UnityResponse
            .builder()
            .data(newBrand)
            .build();
    }


    @GetMapping
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN}
    )
    public UnityResponse getBrands(
        @PathParam("page") Integer page,
        @PathParam("size") Integer size,
        @PathParam("name") String name,
        @PathParam("storeName") String storeName
    ) {
        final var newBrand = brandService.getBrands(page, size,  name, storeName);

        return UnityResponse
            .builder()
            .data(newBrand)
            .build();
    }

    @PatchMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN}
    )
    public UnityResponse getBrands(
        @PathVariable("id") int id,
        @RequestBody @Valid UpdateBrandRequest request
    ) {
        final var newBrand = this.brandService.updateBrand(id, request);
        return UnityResponse
            .builder()
            .data(newBrand)
            .build();
    }
}
