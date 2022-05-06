/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/13
 * Listen  MIT
 */

package com.zhuche.server.validators.order;

import com.zhuche.server.model.Comment;
import com.zhuche.server.model.Order;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.CommentRepository;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Objects;

@Slf4j
@Component
@AllArgsConstructor
public class CheckCreateOrderCommandWiring implements ConstraintValidator<CheckCreateOrderCommand, Long> {
    private final JWTUtil jwtUtil;
    private final OrderRepository orderRepository;
    private final CommentRepository commentRepository;

    @Override
    public boolean isValid(Long id, ConstraintValidatorContext context) {
        final User me = jwtUtil.getUser();
        if (me == null) {
            return false;
        }
        final var option = orderRepository.findById(id);
        if (option.isEmpty()) {
            return false;
        }
        final Order order = option.get();

        if (!Objects.equals(order.getUser().getId(), me.getId())) {
            return false;
        }
        final Comment comment = commentRepository.findByOrderId(id);

        return comment == null;
    }
}
