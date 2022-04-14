package com.zhuche.server.validators.agreement;

import com.zhuche.server.repositories.AgreementRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
@AllArgsConstructor
public class CheckAgreementIdMustBeExistWiring implements ConstraintValidator<CheckAgreementIdMustBeExist, Long> {
    private final AgreementRepository agreementRepository;

    @Override
    public boolean isValid( Long id, ConstraintValidatorContext context ) {
        return agreementRepository.findById(id).isPresent();
    }
}
