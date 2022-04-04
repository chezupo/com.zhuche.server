package com.zhuche.server.validators.car;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckUpdateCarIdWiring.class)
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckUpdateCarId {
    String message() default "车id: ${validatedValue} 无法修改.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
