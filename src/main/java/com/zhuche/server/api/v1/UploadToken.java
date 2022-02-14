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
import com.zhuche.server.dto.response.uploadToken.CreateTokenResponse;
import com.zhuche.server.model.Role;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/uploadToken")
public class UploadToken {

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
        var tokenRes = CreateTokenResponse.builder()
            .accessToken("hello! I'm the token.")
            .platForm("qiniu")
            .prefixUrl("http://wuchuehng.com")
            .build();
        return UnityResponse.builder()
            .data(tokenRes)
            .build();
    }
}
