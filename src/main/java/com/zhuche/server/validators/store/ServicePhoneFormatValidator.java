package com.zhuche.server.validators.store;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = ServicePhoneFormatValidatorWiring.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ServicePhoneFormatValidator {
    String message() default "Service phone: ${validatedValue} is incorrect.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
