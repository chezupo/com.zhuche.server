/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.api.v1.mini.program;


import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.me.UpdateMeRequest;
import com.zhuche.server.dto.request.me.UpdateMyPhoneNumberRequest;
import com.zhuche.server.dto.request.me.UploadLicenseRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.dto.response.me.MeResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.MeService;
import com.zhuche.server.services.UserCouponService;
import com.zhuche.server.util.JWTUtil;
import com.zhuche.server.validators.social.AccessSocialType;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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
        } else if (Objects.equals(social, SocialType.WECHAT.toString())) {
            res =  meService.updateWechatMe(request);
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
        } else if (Objects.equals(social, SocialType.WECHAT.toString())) {
            res =  meService.getWechatMe();
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

    /**
     *  更新手机号
     * @param social
     * @param request
     * @return
     */
    @PutMapping("/socials/{social}/me/phoneNumber")
    public UnityResponse updateMyPhoneNumber(
        @PathVariable @AccessSocialType String social,
        @RequestBody @Valid UpdateMyPhoneNumberRequest request
    ) throws Exception {
        MeResponse res = null;
        if (Objects.equals(social, SocialType.ALIPAY.toString())) {
            res =  meService.updateAlipayPhoneNumber(request);
        }

        return UnityResponse.builder()
            .data(res)
            .build();
    }

    /**
     *  我的推广二维码
     * @return
     */
    @GetMapping("QR")
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse getMyQR( ) throws AlipayApiException {
         String qr = meService.getMyQR();

        return UnityResponse.builder()
            .data(qr)
            .build();
    }

    /**
     * 上传证件
     * @return
     */
    @PutMapping("/me/license")
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse updateLicense(
        @RequestBody UploadLicenseRequest request
    ) {
        var me = meService.updateLicense(request);

        return UnityResponse.builder()
            .data(me)
            .build();
    }
}
