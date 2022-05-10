/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.order;

import com.zhuche.server.model.Order;
import com.zhuche.server.model.OrderStatus;
import com.zhuche.server.repositories.OrderRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
@Component
@AllArgsConstructor
public class CheckOrderStatusMustBeExpiredWiring implements ConstraintValidator<CheckOrderStatusMustBeExpired, Long> {
    private final OrderRepository orderRepository;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        final var option = orderRepository.findById(id);
        if (option.isEmpty()) {
            return false;
        }
        final Order order = option.get();

        return order.getStatus() == OrderStatus.OVERTIME;
    }
}
