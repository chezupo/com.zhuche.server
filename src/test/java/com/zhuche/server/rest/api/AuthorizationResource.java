/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/15
 * Listen  MIT
 */

package com.zhuche.server.rest.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zhuche.server.dto.request.authorizatioins.CreateAuthorizationTokenRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.test.web.servlet.ResultActions;

@Slf4j
@Component
public class AuthorizationResource extends BaseAbstract{

    public ResultActions createToken(CreateAuthorizationTokenRequest createAuthorizationTokenRequest) throws Exception {
        var objectMapper = new  ObjectMapper();
        String json = objectMapper.writeValueAsString(createAuthorizationTokenRequest);
        log.info("Login request body: {}", json);

        return postRequest("/authorization", json);
    }
}
