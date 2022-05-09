/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.order;

import com.zhuche.server.model.Order;
import com.zhuche.server.repositories.OrderRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Optional;

@Slf4j
@Component
@AllArgsConstructor
public class CheckOrderStatusMustBeFreezeOrderWiring implements ConstraintValidator<CheckOrderStatusMustBeFreezeOrder, Long> {
    private final OrderRepository orderRepository;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        Optional<Order> optional = orderRepository.findById(id);
        if (optional.isEmpty()) {
            return false;
        }
        final Order order = optional.get();
        if (order.getFreezeType() == null) {
            return false;
        }

        return true;
    }
}
