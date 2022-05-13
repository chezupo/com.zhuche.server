package com.zhuche.server.validators.social;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Constraint(validatedBy = AccessSocialTypeWiring.class)
public @interface AccessSocialType {
    String message() default "The socialTyp: ${validatedValue} must be wechat or alipay.";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
