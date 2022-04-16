package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.coupon.CreateCouponRequest;
import com.zhuche.server.dto.request.coupon.UpdateCouponRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.CouponService;
import com.zhuche.server.validators.coupon.CheckCouponIdMustBeExist;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/coupons")
@Validated
@RequiredArgsConstructor
@Slf4j
public class Coupon {
    private final CouponService couponService;

    @PostMapping
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "添加优惠卷",
        type = LogType.CREATED
    )
    public UnityResponse createCoupon(
        @RequestBody @Valid CreateCouponRequest request
    ) {
        final var newCoupon = couponService.createCoupon(request);
        return UnityResponse.builder()
            .data(newCoupon)
            .build();
    }


    @GetMapping
    @Permission(
        roles = {Role.ROLE_ADMIN}
    )
    public UnityResponse getCoupons(
        @Param("page") Integer page,
        @Param("size") Integer size
    ) {
        final var couponList = couponService.getCoupons(page, size);
        return UnityResponse.builder()
            .data(couponList)
            .build();
    }

    @PatchMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "编辑优惠券",
        type = LogType.UPDATED
    )
    public UnityResponse updateCoupons(
        @PathVariable("id") @CheckCouponIdMustBeExist Long id,
        @RequestBody @Valid UpdateCouponRequest request

        ) {
        final com.zhuche.server.model.Coupon couponList = couponService.updateCoupon(id, request);
        return UnityResponse.builder()
            .data(couponList)
            .build();
    }

    @DeleteMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "删除优惠券",
        type = LogType.DELETED
    )
    public UnityResponse deleteCoupons( @PathVariable("id") @CheckCouponIdMustBeExist Long id ) {
        couponService.deleteCouponById(id);

        return UnityResponse.builder()
            .build();
    }
}
