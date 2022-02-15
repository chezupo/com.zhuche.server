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
}
