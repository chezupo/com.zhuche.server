/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/20
 * Listen  MIT
 */

package com.zhuche.server.api.v1.mini.program;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.authorizatioins.CreateSocialAuthorizationTokenRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.SocialAuthorizationService;
import com.zhuche.server.validators.social.AccessSocialType;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Objects;

@RestController("miniProgramSocialsAuthorizations")
@RequestMapping("/api/v1/miniProgram/socials")
@Slf4j
@Validated
public class SocialsAuthorizations {
    @Autowired
    private SocialAuthorizationService authorizationService;

    @PostMapping("/{socialType}/authorizations")
    public UnityResponse createToken(
        @PathVariable("socialType") @AccessSocialType String socialType,
        @Valid @RequestBody CreateSocialAuthorizationTokenRequest request
    ) throws AlipayApiException {
        Object token = null;
        if (Objects.equals(SocialType.ALIPAY.toString(), socialType)) {
            token = authorizationService.alipayAuthorize(request);
        }

        return UnityResponse.builder()
            .data(token)
            .build();
    }
}
