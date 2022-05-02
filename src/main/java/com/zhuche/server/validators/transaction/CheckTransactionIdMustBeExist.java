package com.zhuche.server.validators.transaction;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckTransactionIdMustBeExistWiring.class )
@Target({ ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckTransactionIdMustBeExist {
    String message() default "账单id: ${validatedValue} 不存在.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
