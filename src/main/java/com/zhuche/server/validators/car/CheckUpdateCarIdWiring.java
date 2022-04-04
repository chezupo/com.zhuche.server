package com.zhuche.server.validators.car;

import com.zhuche.server.model.Car;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.BrandSeriesRepository;
import com.zhuche.server.repositories.CarRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Objects;

@Component
@RequiredArgsConstructor
public class CheckUpdateCarIdWiring implements ConstraintValidator<CheckUpdateCarId, Long> {
    private final CarRepository carRepository;
    private final JWTUtil jwtUtil;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        final var optionalCar = carRepository.findById(id);
        if (optionalCar.isEmpty()) {
            return false;
        }
        final User me = jwtUtil.getUser();
        if (me.getRoles().contains(Role.ROLE_ADMIN)) {
            return true;
        }
        final Car car = optionalCar.get();

        return Objects.equals(car.getStore().getAdmin().getId(), me.getId());
    }
}
