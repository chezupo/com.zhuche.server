package com.zhuche.server.dto.request.user.coupon;

import com.zhuche.server.validators.coupon.CheckCouponIdsMustBeExist;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class CreateUserCouponRequest {
    @NotNull
    @CheckCouponIdsMustBeExist
    private List<Long> couponIds;
}
