package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.user.coupon.CreateUserCouponRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.UserCouponService;
import com.zhuche.server.validators.user.CheckUserIdMustBeExist;
import lombok.AllArgsConstructor;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/users")
@Validated
@AllArgsConstructor
public class UserCoupon {
    private final UserCouponService userCouponService;

    @PostMapping("/{id}/coupons")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "赠送用户优惠卷",
        type = LogType.CREATED
    )
    public UnityResponse createUserCoupon(
        @PathVariable("id") @CheckUserIdMustBeExist Long userId,
        @RequestBody @Valid CreateUserCouponRequest request
    ) {
       final var newUserCoupons= userCouponService.createUserCoupon(userId, request.getCouponIds());
        return UnityResponse.builder()
            .data(newUserCoupons)
            .build();
    }

    @GetMapping("/coupons")
    @Permission(
        roles = {Role.ROLE_ADMIN}
    )
    public UnityResponse getUserCoupons(
        @Param("page") Integer page,
        @Param("size") Integer size,
        @Param("userId") Long userId,
        @Param("title") String title,
        @Param("nickName") String nickName
    ) {
        final PageFormat pageData = userCouponService.getUserCoupons(page, size, userId, title, nickName);
        return UnityResponse.builder()
            .data(pageData)
            .build();
    }

}
