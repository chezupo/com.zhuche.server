/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/15
 * Listen  MIT
 */

package com.zhuche.server.api.v1;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.UploadTokenService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/uploadToken")
@AllArgsConstructor
public class UploadToken {
   private final UploadTokenService uploadTokenService;

    @PostMapping
    @Permission(roles = {
        Role.ROLE_ADMIN,
        Role.ROLE_USER,
        Role.ROLE_BUSINESS,
        Role.ROLE_CUSTOMER,
        Role.ROLE_AGENT,
        Role.ROLE_PROMOTER
    })
    public UnityResponse createToken() {
        final var token = uploadTokenService.createToken();
        return UnityResponse.builder()
            .data(token)
            .build();
    }
}
