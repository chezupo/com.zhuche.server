/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.store;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckStartTimeAndEndTimeWiring.class )
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckStartTimeAndEndTime {
    String message() default "取车开始时间和还车时间错误.";

    String startTimestamp();

    String endTimestamp();

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
