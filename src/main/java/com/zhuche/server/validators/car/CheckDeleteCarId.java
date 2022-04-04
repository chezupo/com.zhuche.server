package com.zhuche.server.validators.car;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckDeleteCarIdWiring.class)
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckDeleteCarId {
    String message() default "车id: ${validatedValue} 无法删除.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
