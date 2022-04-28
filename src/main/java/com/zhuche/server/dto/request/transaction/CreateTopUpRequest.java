package com.zhuche.server.dto.request.transaction;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.DecimalMin;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class CreateTopUpRequest {
    @DecimalMin(value = "0.01", message = "充值不能小于0.01")
    private Double amount;
}
