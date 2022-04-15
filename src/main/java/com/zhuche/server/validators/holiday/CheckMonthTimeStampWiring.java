package com.zhuche.server.validators.holiday;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Calendar;
import java.util.Date;

public class CheckMonthTimeStampWiring implements ConstraintValidator<CheckMonthTimeStamp, Long> {

    @Override
    public boolean isValid( Long timeStamp, ConstraintValidatorContext context ) {
        try {
            final var date = new Date(timeStamp);
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);

            return cal.get(Calendar.DAY_OF_MONTH) == 1;
        }catch (Exception e) {
            return false;
        }
    }
}
