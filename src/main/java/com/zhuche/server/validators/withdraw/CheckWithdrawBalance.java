package com.zhuche.server.validators.withdraw;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckWithdrawMustBeProcessingWiring.class )
@Target({ ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckWithdrawBalance {
    String message() default "账户余额不足";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
