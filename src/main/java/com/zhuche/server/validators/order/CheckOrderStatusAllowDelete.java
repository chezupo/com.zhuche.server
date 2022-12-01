/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.order;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

/**
 * 验证订单状态是否允许被删除
 */
@Documented
@Constraint( validatedBy = CheckOrderStatusAllowDeleteWiring.class )
@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckOrderStatusAllowDelete {
    String message() default "该订单id: ${validatedValue} 不能被删除";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
