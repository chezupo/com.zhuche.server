package com.zhuche.server.validators.coupon;

import com.zhuche.server.repositories.CouponRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.List;

@Component
@AllArgsConstructor
public class CheckCouponIdsMustBeExistWiring implements ConstraintValidator<CheckCouponIdsMustBeExist, List<Long>> {
    private final CouponRepository couponRepository;


    @Override
    public boolean isValid(List<Long> ids, ConstraintValidatorContext context) {
        final var couponList = couponRepository.findAllById(ids);

        return couponList.size() == ids.size();
    }
}
