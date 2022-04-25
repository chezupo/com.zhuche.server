package com.zhuche.server.validators.store;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckStoreIdMustBeExistWiring.class)
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckStoreIdMustBeExist {
    String message() default "商店id: ${validatedValue} 不存在.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
