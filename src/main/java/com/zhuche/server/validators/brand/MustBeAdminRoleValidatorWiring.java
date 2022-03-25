/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.brand;

import com.zhuche.server.model.Role;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
@Component
@RequiredArgsConstructor
public class MustBeAdminRoleValidatorWiring implements ConstraintValidator<MustBeAdminRoleValidator, Integer> {
    private final UserRepository userRepository;
    private final JWTUtil jwtUtil;

    @Override
    public boolean isValid(Integer value, ConstraintValidatorContext context) {
        if (value != null) {
            User me = jwtUtil.getUser();
            return me.getRoles().contains(Role.ROLE_ADMIN);
        }

        return true;
    }
}
