package com.zhuche.server.validators.user;

import com.zhuche.server.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
@Component
@RequiredArgsConstructor
public class CheckUserIdMustBeExistWiring implements ConstraintValidator<CheckUserIdMustBeExist, Long> {
    private final UserRepository userRepository;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
       return userRepository.existsById(id);
    }
}
