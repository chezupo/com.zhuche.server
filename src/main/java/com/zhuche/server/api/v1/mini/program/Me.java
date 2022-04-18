/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.api.v1.mini.program;


import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.contexts.AuthContext;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.me.UpdateMeRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.dto.response.me.MeResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.MeService;
import com.zhuche.server.services.UserCouponService;
import com.zhuche.server.util.JWTUtil;
import com.zhuche.server.validators.social.AccessSocialType;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

@RestController("miniProgramMe")
@RequestMapping("/api/v1/miniProgram")
@Slf4j
@Validated
public class Me {
    @Autowired
    private MeService meService;
    @Autowired UserCouponService userCouponService;

    @Autowired JWTUtil jwtUtil;

    @Permission(
        roles = {Role.ROLE_USER, Role.ROLE_AGENT}
    )
    @PutMapping("/socials/{social}/me")
    public UnityResponse updateMe(
        @PathVariable @AccessSocialType String social,
        @RequestBody UpdateMeRequest request
    ) {
        MeResponse res = null;
        if (Objects.equals(social, SocialType.ALIPAY.toString())) {
            res =  meService.updateAlipayMe(request);
        }

        return UnityResponse.builder()
            .data(res)
            .build();
    }

    @Permission(
        roles = {Role.ROLE_USER, Role.ROLE_AGENT}
    )
    @GetMapping("/socials/{social}/me")
    public UnityResponse getMe(@PathVariable @AccessSocialType String social ) {
        MeResponse res = null;
        if (Objects.equals(social, SocialType.ALIPAY.toString())) {
            res =  meService.getAlipayMe();
        }

        return UnityResponse.builder()
            .data(res)
            .build();
    }

    @Permission( roles = { Role.ROLE_USER } )
    @GetMapping("/me/userCoupons")
    public UnityResponse getMyCoupons() {
        final var me = jwtUtil.getUser();
        final var userCoupons = userCouponService.getUserCouponsByUserid(me.getId());

        return UnityResponse.builder()
            .data(userCoupons)
            .build();
    }

}
