package com.zhuche.server.validators.user.contact;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = CheckUserContactMustBelongMeWiring.class )
@Target({ ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckUserContactMustBelongMe {
    String message() default "联系id: ${validatedValue} 不存在.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
