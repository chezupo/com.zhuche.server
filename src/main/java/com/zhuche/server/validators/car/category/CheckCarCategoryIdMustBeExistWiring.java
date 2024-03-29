package com.zhuche.server.validators.car.category;

import com.zhuche.server.model.CarCategory;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.CarCategoryRepository;
import com.zhuche.server.util.AuthUtil;
import com.zhuche.server.util.JWTUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Objects;

@Component
@RequiredArgsConstructor
public class CheckCarCategoryIdMustBeExistWiring implements ConstraintValidator<CheckCarCategoryIdMustBeExist, Long> {
    private final CarCategoryRepository carCategoryRepository;
    private final JWTUtil jwtUtil;
    private final AuthUtil authUtil;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        final var optionalCar = carCategoryRepository.findById(id);
        if (optionalCar.isEmpty()) {
            return false;
        }
        final User me = jwtUtil.getUser();
        if (authUtil.isAdmin()) {
            return true;
        }
        final CarCategory category = optionalCar.get();

        return Objects.equals(category.getStore().getAdmin().getId(), me.getId());
    }
}
