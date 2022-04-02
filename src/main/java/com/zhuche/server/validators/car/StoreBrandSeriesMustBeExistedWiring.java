package com.zhuche.server.validators.car;

import com.zhuche.server.model.BrandSeries;
import com.zhuche.server.model.Store;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.AreaRepository;
import com.zhuche.server.repositories.BrandSeriesRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Objects;

@Component
@RequiredArgsConstructor
public class StoreBrandSeriesMustBeExistedWiring implements ConstraintValidator<StoreBrandSeriesMustBeExisted, Long> {
    private final BrandSeriesRepository brandSeriesRepository;
    private final JWTUtil jwtUtil;

    @Override
    public boolean isValid(Long value, ConstraintValidatorContext context) {
        final User me = jwtUtil.getUser();
        final Store myStore = me.getStore();
        final var option = brandSeriesRepository.findById(value);
        if (option.isEmpty()) {
            return false;
        }
        final var series = option.get();

        final var store = series.getBrand().getStore();
        return Objects.equals(store.getId(), myStore.getId());
    }
}
