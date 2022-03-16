package com.zhuche.server.validators.store;

import com.zhuche.server.repositories.StoreRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
@RequiredArgsConstructor
public class HasStoreValidatorWiring implements ConstraintValidator<HasStoreValidator, Long> {
    private final StoreRepository storeRepository;

    @Override
    public boolean isValid(Long value, ConstraintValidatorContext context) {
        var store = storeRepository.findById(value);

        return !store.isEmpty();
    }
}
