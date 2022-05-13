/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/20
 * Listen  MIT
 */

package com.zhuche.server.validators.social;

import com.zhuche.server.dto.path.variable.SocialType;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Objects;

public class AccessSocialTypeWiring implements ConstraintValidator<AccessSocialType, String> {

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        return Objects.equals(value, SocialType.WECHAT.toString()) ||
            Objects.equals(value, SocialType.ALIPAY.toString()) ||
            Objects.equals(value, SocialType.TT.toString());
    }
}
