package com.zhuche.server.validators.store;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ServicePhoneFormatValidatorWiring implements ConstraintValidator<ServicePhoneFormatValidator, String> {
    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        return value.matches("\\d+");
    }
}
