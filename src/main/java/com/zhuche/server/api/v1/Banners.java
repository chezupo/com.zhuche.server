/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/14
 * Listen  MIT
 */

package com.zhuche.server.api.v1;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.banners.CreateBannerRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Banner;
import com.zhuche.server.model.Role;
import com.zhuche.server.repositories.BannerRepository;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/banners")
@AllArgsConstructor
public class Banners {
    private final BannerRepository bannerRepository;

    @PostMapping
    @Permission(roles = {Role.ROLE_ADMIN})
    public UnityResponse createBanner(@Valid @RequestBody CreateBannerRequest request ) {
        var newBanner = Banner.builder()
            .imgKey(request.getImgKey())
            .content(request.getContent())
            .build();
        newBanner = bannerRepository.save(newBanner);

        return UnityResponse.builder()
            .data(newBanner)
            .build();
    }
}
