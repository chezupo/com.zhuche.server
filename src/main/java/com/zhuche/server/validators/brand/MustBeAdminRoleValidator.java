/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.brand;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint( validatedBy = MustBeAdminRoleValidatorWiring.class )
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface MustBeAdminRoleValidator {
    String message() default "操作别的门店数据必须是管理员账号: ${validatedValue}.";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
