package com.zhuche.server.validators.area.code;

import com.zhuche.server.repositories.AreaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
@RequiredArgsConstructor
public class AreaCodeMustBeExistedWiring implements ConstraintValidator<AreaCodeMustBeExisted, String> {
    private final AreaRepository areaRepository;

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
         return areaRepository.findByCode(value) != null;
    }
}
