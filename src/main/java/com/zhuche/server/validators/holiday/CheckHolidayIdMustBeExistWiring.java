package com.zhuche.server.validators.holiday;

import com.zhuche.server.repositories.HolidayRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
@AllArgsConstructor
public class CheckHolidayIdMustBeExistWiring implements ConstraintValidator<CheckHolidayIdMustBeExist, Long> {
    private final HolidayRepository holidayRepository;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        return holidayRepository.findById(id).isPresent();
    }
}
