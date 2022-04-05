package com.zhuche.server.validators.car;

import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;

@Component
public class CheckDateTimeRangeWiring implements ConstraintValidator<CheckDateTimeRange, String> {

    private boolean isAllowNull;

    public void initialize(CheckDateTimeRange constraintAnnotation) {
        this.isAllowNull= constraintAnnotation.isAllowNull();
    }

    @Override
    public boolean isValid(String dateTimeRange, ConstraintValidatorContext context) {
        context.getClass().getAnnotations();
        if (dateTimeRange != null) {
            final var dateTimeStr = Arrays.stream(dateTimeRange.split("-")).toList();
            if (dateTimeStr.size() != 2) {
                return false;
            }
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm");
            LocalDateTime startTime = LocalDateTime.parse(dateTimeStr.get(0), formatter);
            LocalDateTime endTime = LocalDateTime.parse(dateTimeStr.get(1), formatter);
            final var startTimestamp = Timestamp.valueOf(startTime).toInstant().toEpochMilli();
            final var endTimestamp = Timestamp.valueOf(endTime).toInstant().toEpochMilli();
            if (endTimestamp < startTimestamp) {
                return false;
            }
            return true;
        } else if (isAllowNull) {
            return true;
        }
        else {
            return false;
        }
    }
}
