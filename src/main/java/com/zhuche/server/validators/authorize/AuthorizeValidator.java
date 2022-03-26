/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.authorize;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = AuthorizeValidatorWiring.class )
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface AuthorizeValidator {
    String message() default "账号或密码错误.";

    String username();

    String password();

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
