/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/14
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.banners.CreateBannerRequest;
import com.zhuche.server.dto.request.banners.UpdateBannerRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Banner;
import com.zhuche.server.model.Log;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.repositories.BannerRepository;
import com.zhuche.server.services.BannerService;
import com.zhuche.server.validators.banners.HasBannerId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.Min;

@RestController
@RequestMapping("/api/v1/banners")
public class Banners {

    @Autowired
    private BannerRepository bannerRepository;

    @Autowired
    private BannerService bannerService;

    @PostMapping
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "创建banner图",
        type = LogType.CREATED
    )
    public UnityResponse createBanner(@Valid @RequestBody CreateBannerRequest request ) {
        var newBanner = Banner.builder()
            .imgKey(request.getImgKey())
            .content(request.getContent())
            .title(request.getTitle())
            .build();
        newBanner = bannerRepository.save(newBanner);

        return UnityResponse.builder()
            .data(newBanner)
            .build();
    }

    @GetMapping
    public UnityResponse getBanners(
        @Param("page") @Min(1) Integer page,
        @Param("size") Integer size
    ) {
        Object res = null;
        if (page != null) {
            res = bannerService.getBannerPage(page, size);
        } else {
            res = bannerService.getBanners();
        }

        return UnityResponse.builder()
            .data(res)
            .build();
    }

    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "修改banner",
        type = LogType.UPDATED
    )
    @PatchMapping("/{id}")
    public UnityResponse updateBanner(
        @PathVariable("id") @HasBannerId Integer id,
        @Valid @RequestBody UpdateBannerRequest requestBody
    ) {
        var banner = bannerService.updateBanner(id, requestBody);

        return UnityResponse.builder()
            .data(banner)
            .build();
    }

    @DeleteMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "删除banner图片",
        type = LogType.DELETED
    )
    public UnityResponse destroy( @PathVariable("id") @HasBannerId(message = "没有该banner") Integer id) {
         bannerService.destroy(id);

        return UnityResponse.builder().build();
    }
}
