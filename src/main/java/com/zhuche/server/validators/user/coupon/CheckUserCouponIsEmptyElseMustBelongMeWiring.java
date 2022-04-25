package com.zhuche.server.validators.user.coupon;

import com.zhuche.server.repositories.UserCouponRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Objects;

@Slf4j
@Component
@RequiredArgsConstructor
public class CheckUserCouponIsEmptyElseMustBelongMeWiring implements ConstraintValidator<CheckUserCouponIsEmptyElseMustBelongMe, Long> {
    private final UserCouponRepository userCouponRepository;
    private final JWTUtil jwtUtil;

    @Override
    public boolean isValid(Long userCouponId, ConstraintValidatorContext context) {
        if (userCouponId == null) return true;
        final var option = userCouponRepository.findById(userCouponId);
        if (option.isEmpty()) {
            return false;
        }
        final var userCoupon = option.get();

        return Objects.equals(jwtUtil.getUser().getId(), userCoupon.getUser().getId());
    }
}
