package com.zhuche.server.validators.car;

import com.zhuche.server.repositories.CarRepository;
import com.zhuche.server.validators.agreement.CheckAgreementIdMustBeExist;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
@AllArgsConstructor
public class CheckCarIdMustBeExistWiring implements ConstraintValidator<CheckCarIdMustBeExist, Long> {
    private final CarRepository carRepository;

    @Override
    public boolean isValid( Long id, ConstraintValidatorContext context ) {
        return carRepository.findById(id).isPresent();
    }
}
