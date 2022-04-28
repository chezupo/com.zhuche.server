package com.zhuche.server.validators.user.contact;

import com.zhuche.server.repositories.UserContactRepository;
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
public class CheckUserContactMustBelongMeWiring implements ConstraintValidator<CheckUserContactMustBelongMe, Long> {
    private final UserContactRepository userContactRepository;
    private final JWTUtil jwtUtil;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        final var option = userContactRepository.findById(id);
        if (option.isEmpty())  {
            return false;
        }
        final var me = jwtUtil.getUser();

        return Objects.equals(option.get().getUser().getId(), me.getId());
    }
}
