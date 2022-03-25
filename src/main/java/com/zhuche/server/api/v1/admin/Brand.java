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
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.BrandService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/brands")
@AllArgsConstructor
@Validated
public class Brand {
    private final BrandService brandService;

    @PostMapping
    @Permission(roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN})
    public UnityResponse create(
        @RequestBody @Valid CreateBrandRequest request
    ) {
        final var newBrand = brandService.createBrand(request);

        return UnityResponse
            .builder()
            .data(newBrand)
            .build();
    }
}
