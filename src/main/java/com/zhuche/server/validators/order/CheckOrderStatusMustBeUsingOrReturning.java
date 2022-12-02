/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.order;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckOrderStatusMustBeUsingOrReturningWiring.class )
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckOrderStatusMustBeUsingOrReturning {
    String message() default "该订单id: ${validatedValue} 并不是使用中或还车中";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
