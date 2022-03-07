package com.zhuche.server.validators.user;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = UsersMusBeNoExistValidatorWiring.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface UsersMusBeNoExistValidator {
    String message() default "用户名: ${validatedValue} 已存在.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
