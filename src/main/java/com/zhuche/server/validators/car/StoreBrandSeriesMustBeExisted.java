package com.zhuche.server.validators.car;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = StoreBrandSeriesMustBeExistedWiring.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface StoreBrandSeriesMustBeExisted {
    String message() default "车系id: ${validatedValue} 不存在.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
