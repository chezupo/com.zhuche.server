package com.zhuche.server.dto.request.order.command;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateOrderCommandRequest {
    @NotBlank
    private String content;

    @NotNull
    private Integer rate;
}
