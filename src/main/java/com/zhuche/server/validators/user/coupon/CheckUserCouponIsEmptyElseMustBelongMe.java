package com.zhuche.server.validators.user.coupon;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

/**
 *  要么优惠卷为空，要么是用户本人的
 */
@Documented
@Constraint( validatedBy = CheckUserCouponIsEmptyElseMustBelongMeWiring.class )
@Target({ ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckUserCouponIsEmptyElseMustBelongMe {
    String message() default "优惠卷: ${validatedValue} 错误.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}


