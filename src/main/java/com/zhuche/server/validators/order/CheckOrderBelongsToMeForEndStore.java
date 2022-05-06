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
@Constraint( validatedBy = CheckOrderBelongsToMeForEndStoreWiring.class )
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckOrderBelongsToMeForEndStore {
    String message() default "该订单的还车门店: ${validatedValue} 不是归属于我.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
