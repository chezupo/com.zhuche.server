package com.zhuche.server.validators.transaction;

import com.zhuche.server.repositories.TransactionRepository;
import com.zhuche.server.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
@Component
@RequiredArgsConstructor
public class CheckTransactionIdMustBeExistWiring implements ConstraintValidator<CheckTransactionIdMustBeExist, Long> {
    private final TransactionRepository transactionRepository;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        return transactionRepository.findById(id).isPresent();
    }
}
