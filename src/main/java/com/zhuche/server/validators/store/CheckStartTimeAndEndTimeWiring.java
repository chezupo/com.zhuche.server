/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.store;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanWrapperImpl;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
public class CheckStartTimeAndEndTimeWiring implements ConstraintValidator<CheckStartTimeAndEndTime, Object> {
    private String startTimestamp;

    private String endTimestamp;

    public void initialize(CheckStartTimeAndEndTime constraintAnnotation) {
        startTimestamp = constraintAnnotation.startTimestamp();
        endTimestamp = constraintAnnotation.endTimestamp();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        final var startTimeStamp= Long.valueOf( new BeanWrapperImpl(value).getPropertyValue(this.startTimestamp).toString() );
        final var endTimeStamp= Long.valueOf( new BeanWrapperImpl(value).getPropertyValue(this.endTimestamp).toString() );
        final var days = 60 * 60 * 24 * 1000;

        return (endTimeStamp - startTimeStamp >= days);
    }
}
