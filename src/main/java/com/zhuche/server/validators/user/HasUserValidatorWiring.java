/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.user;

import com.zhuche.server.model.User;
import com.zhuche.server.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
@Component
@RequiredArgsConstructor
public class HasUserValidatorWiring implements ConstraintValidator<HasUserValidator, String> {
    private final UserRepository userRepository;

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        User user = userRepository.findUserByUsername(value);

        return user != null;
    }
}
