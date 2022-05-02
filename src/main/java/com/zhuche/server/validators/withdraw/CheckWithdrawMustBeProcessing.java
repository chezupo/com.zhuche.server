package com.zhuche.server.validators.withdraw;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckWithdrawMustBeProcessingWiring.class )
@Target({ ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckWithdrawMustBeProcessing {
    String message() default "提现单: ${validatedValue} 状态错误.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
