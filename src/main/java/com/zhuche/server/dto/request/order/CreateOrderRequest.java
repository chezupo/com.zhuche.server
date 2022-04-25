package com.zhuche.server.dto.request.order;

import com.zhuche.server.validators.car.CheckCarIdMustBeExist;
import com.zhuche.server.validators.store.CheckStartTimeAndEndTime;
import com.zhuche.server.validators.store.CheckStoreIdMustBeExist;
import com.zhuche.server.validators.user.coupon.CheckUserCouponIsEmptyElseMustBelongMe;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
@CheckStartTimeAndEndTime(endTimestamp = "endTimeStamp", startTimestamp = "startTimeStamp")
public class CreateOrderRequest {
    @NotNull
    @CheckCarIdMustBeExist
    private Long carId;

    @NotNull
    @CheckStoreIdMustBeExist
    private Long endStoreId;

    @NotNull
    @CheckStoreIdMustBeExist
    private Long startStoreId;

    @NotNull
    private Boolean isInsurance;

    @CheckUserCouponIsEmptyElseMustBelongMe
    private Long userCouponId;

    @NotNull
    private Long startTimeStamp;

    @NotNull
    private Long endTimeStamp;
}
