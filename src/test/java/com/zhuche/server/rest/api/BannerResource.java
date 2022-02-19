/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.rest.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zhuche.server.dto.request.banners.CreateBannerRequest;
import com.zhuche.server.dto.request.banners.UpdateBannerRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.test.web.servlet.ResultActions;

@Slf4j
@Component
public class BannerResource extends BaseAbstract{

    public ResultActions createBanner(CreateBannerRequest createAuthorizationTokenRequest, String token) throws Exception {
        var objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(createAuthorizationTokenRequest);
        log.info("Creating new banner: {}", json);

        return postRequest("/banners", json, token);
    }

    public ResultActions getBanners() throws Exception {
        log.info("Getting list of banner banners." );

        return getRequest("/banners?page=1");
    }

    public ResultActions updateBanner(Integer id, UpdateBannerRequest requestBody, String token) throws Exception {
        log.info("Getting list of banner banners." );
        var url  = String.format("/banners/%d", id);

        return patchRequest(url, requestBody, token);
    }

    public ResultActions deleteBanner(Integer id, String token) throws Exception {
        log.info("Destroy the banner, id: {}", id );
        var url  = String.format("/banners/%d", id);

        return deleteRequest(url, token);
    }
}

