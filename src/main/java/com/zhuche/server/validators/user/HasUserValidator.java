/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.user;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = HasUserValidatorWiring.class )
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface HasUserValidator {
    String message() default "用户名: ${validatedValue} 不存在.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
