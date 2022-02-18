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
import com.zhuche.server.dto.request.banners.UpdateBannerRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Banner;
import com.zhuche.server.model.Role;
import com.zhuche.server.repositories.BannerRepository;
import com.zhuche.server.services.BannerService;
import com.zhuche.server.validators.banners.HasBannerId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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


    @GetMapping
    public UnityResponse getBanners(@Param("page") @Min(1) Integer page, @Param("size") Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        var bannerPage = bannerRepository.getBanners(pagingSort).stream().toList();
        var pageFormat  = PageFormat.builder()
            .total( bannerRepository.count() )
            .list(bannerPage.stream().toList())
            .currentPage(page + 1)
            .size(size)
            .build();

        return UnityResponse.builder()
            .data(pageFormat)
            .build();
    }

    @Permission(roles = {Role.ROLE_ADMIN})
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
}
