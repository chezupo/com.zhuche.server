package com.zhuche.server.validators.withdraw;

import com.zhuche.server.model.User;
import com.zhuche.server.util.JWTUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
@Component
@RequiredArgsConstructor
public class CheckWithdrawBalanceWiring implements ConstraintValidator<CheckWithdrawBalance, Double> {
    private final JWTUtil jwtUtil;

    @Override
    public boolean isValid(Double amount, ConstraintValidatorContext context) {
        final User me = jwtUtil.getUser();

         return me.getBalance() > amount;
    }
}
