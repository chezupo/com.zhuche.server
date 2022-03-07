package com.zhuche.server.validators.area.code;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = AreaCodeMustBeExistedWiring.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface AreaCodeMustBeExisted {
    String message() default "Area code: ${validatedValue} not exited.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
