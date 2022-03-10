package com.zhuche.server.validators.store;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = HasStoreValidatorWiring.class)
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface HasStoreValidator {
    String message() default "store: ${validatedValue} is incorrect.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
