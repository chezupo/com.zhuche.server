package com.zhuche.server.validators.user;

import com.zhuche.server.model.User;
import com.zhuche.server.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
@RequiredArgsConstructor
public class UsersMusBeNoExistValidatorWiring implements ConstraintValidator<UsersMusBeNoExistValidator, String> {
    private final UserRepository userRepository;

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        User user = userRepository.findUserByUsername(value);

        return user == null;
    }
}
