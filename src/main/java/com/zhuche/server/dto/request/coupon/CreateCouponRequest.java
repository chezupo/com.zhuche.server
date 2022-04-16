package com.zhuche.server.dto.request.coupon;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateCouponRequest {
    @NotBlank
    private String title;

    @NotBlank
    private String content;

    @NotNull
    private Boolean isAutoDispatchingToNewUser; // 自动派发给新用户

    @NotNull
    private Float amount; // 额度

    @NotNull
    private Float meetAmount; // 满足的额度

    @NotNull
    @Min(1)
    private Integer expired; // 期限(秒)

    @NotNull
    private Boolean isWithHoliday; // 节假日能否使用

    @NotNull
    private Boolean isWithRent; // 可用于减免车辆租赁费用

    @NotNull
    private Boolean isWithServiceAmount; // 可用于减免服务费
}
