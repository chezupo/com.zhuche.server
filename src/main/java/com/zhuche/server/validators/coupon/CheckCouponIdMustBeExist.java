package com.zhuche.server.validators.coupon;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckCouponIdMustBeExistWiring.class)
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckCouponIdMustBeExist {
    String message() default "id: ${validatedValue} 不存在.";

    boolean isAllowNull() default false;

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
