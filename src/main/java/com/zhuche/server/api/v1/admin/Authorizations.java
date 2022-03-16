/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;

import com.zhuche.server.dto.request.authorizatioins.CreateAuthorizationTokenRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.AuthorizationService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1")
@AllArgsConstructor
@Validated
public class Authorizations {
    private final AuthorizationService authorizationService;

    @PostMapping("/authorization")
    public UnityResponse createToken(
        @Valid()
        @RequestBody() CreateAuthorizationTokenRequest request
    ) {
        var response = authorizationService.createToken(request);

        return UnityResponse.builder()
            .data(response)
            .build();
    }
}
