package com.zhuche.server.dto.request.configuration;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateOrderAgreementRequest {

    @NotNull(message = "订单协议不能为空")
    private String orderAgreement;

    @NotNull(message = "驾无忧协议不能为空")
    private String insuranceAgreement;
}
