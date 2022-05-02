package com.zhuche.server.validators.withdraw;

import com.zhuche.server.model.Transaction;
import com.zhuche.server.model.TransactionStatus;
import com.zhuche.server.repositories.TransactionRepository;
import com.zhuche.server.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
@Component
@RequiredArgsConstructor
public class CheckWithdrawMustBeProcessingWiring implements ConstraintValidator<CheckWithdrawMustBeProcessing, Long> {
    private final TransactionRepository transactionRepository;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        var option = transactionRepository.findById(id);
        if (option.isEmpty()) {
            return false;
        }
        final Transaction transaction = option.get();

        return transaction.isWithDraw() && transaction.getStatus() == TransactionStatus.PROCESSING && transaction.getAmount() < 0;
    }
}
