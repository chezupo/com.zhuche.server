package com.zhuche.server.validators.banners;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Constraint(validatedBy = HasBannerIdWiring.class)
public @interface HasBannerId {
    String message() default "The ID: ${validatedValue} not found in banners.";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
