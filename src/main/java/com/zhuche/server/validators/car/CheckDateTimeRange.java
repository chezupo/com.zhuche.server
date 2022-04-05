package com.zhuche.server.validators.car;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckDateTimeRangeWiring.class)
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckDateTimeRange {
    String message() default "日期时间范围: ${validatedValue} 不正确.";

    boolean isAllowNull() default false;

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
