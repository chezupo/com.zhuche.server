package com.zhuche.server.validators.coupon;

import com.zhuche.server.repositories.CouponRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
@AllArgsConstructor
public class CheckCouponIdMustBeExistWiring implements ConstraintValidator<CheckCouponIdMustBeExist, Long> {
    private final CouponRepository couponRepository;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        return couponRepository.findById(id).isPresent();
    }
}
