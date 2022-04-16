package com.zhuche.server.dto.mapper;

import com.zhuche.server.dto.request.coupon.CreateCouponRequest;
import com.zhuche.server.dto.request.coupon.UpdateCouponRequest;
import com.zhuche.server.model.Coupon;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CouponMapper {
    Coupon createCouponToCoupon(CreateCouponRequest request);

    Coupon updateCouponToCoupon(UpdateCouponRequest request);
}
