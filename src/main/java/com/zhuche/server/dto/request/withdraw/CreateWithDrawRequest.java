package com.zhuche.server.dto.request.withdraw;

import com.zhuche.server.validators.withdraw.CheckWithdrawBalance;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.DecimalMin;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class CreateWithDrawRequest {

    @DecimalMin(value = "0.1", message = "提现不能小于0.1")
    @CheckWithdrawBalance
    private Double amount;

    private String remark;

    private Boolean isCommission;
}
