/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.authorize;

import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.PasswordEncodeUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Objects;

@Slf4j
@Component
@RequiredArgsConstructor
public class AuthorizeValidatorWiring implements ConstraintValidator<AuthorizeValidator, Object> {
    private final PasswordEncodeUtil passwordEncodeUtil;

    private String username;

    private String password;

    private final UserRepository userRepository;

    public void initialize(AuthorizeValidator constraintAnnotation) {
        this.username = constraintAnnotation.username();
        this.password = constraintAnnotation.password();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        final var username = new BeanWrapperImpl(value).getPropertyValue(this.username).toString();
        var password = new BeanWrapperImpl(value).getPropertyValue(this.password).toString();
        log.info("Check the account for login. username: {}, password: {}", username, password);
        final var user = userRepository.findUserByUsername(username);
        if (user == null) return false;
        password = passwordEncodeUtil.encode(password);

        return Objects.equals(user.getPassword(), password);
    }
}
