package com.zhuche.server.validators.car;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckCarIdMustBeExistWiring.class)
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckCarIdMustBeExist {
    String message() default "汽车id: ${validatedValue} 不存在.";

    boolean isAllowNull() default false;

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
