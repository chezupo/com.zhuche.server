package com.zhuche.server.validators.holiday;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckMonthTimeStampWiring.class)
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckMonthTimeStamp {
    String message() default "不是月份时间戳: ${validatedValue} .";

    boolean isAllowNull() default false;

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
