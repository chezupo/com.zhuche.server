package com.zhuche.server.validators.holiday;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckHolidayIdMustBeExistWiring.class)
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckHolidayIdMustBeExist {
    String message() default "节日id: ${validatedValue} 不存在.";

    boolean isAllowNull() default false;

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
