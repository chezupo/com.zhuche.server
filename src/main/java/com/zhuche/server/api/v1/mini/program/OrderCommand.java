package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.request.order.command.CreateOrderCommandRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Comment;
import com.zhuche.server.services.OrderService;
import com.zhuche.server.validators.order.CheckCreateOrderCommand;
import com.zhuche.server.validators.order.CheckOrderMustBelongMeById;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController("miniProgramOrderCommand")
@RequestMapping("/api/v1/miniProgram/orders")
@Slf4j
@Validated
@AllArgsConstructor
public class OrderCommand {
    private final OrderService orderService;
    /**
     * 创建订单评论
     * @return
     */
    @PostMapping("/{id}/commands")
    public UnityResponse createCommand(
        @PathVariable("id") @CheckOrderMustBelongMeById @CheckCreateOrderCommand Long id,
        @RequestBody @Valid CreateOrderCommandRequest request
        ) {
        final Comment comment  = orderService.createCommand(id, request);

        return UnityResponse.builder().data(comment).build();
    }
}
