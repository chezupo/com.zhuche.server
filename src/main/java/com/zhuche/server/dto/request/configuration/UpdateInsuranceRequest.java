package com.zhuche.server.dto.request.configuration;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateInsuranceRequest {

    @NotNull
    @Min(0)
    @Digits(integer = 10 /*precision*/, fraction = 2 /*scale*/)
    private Float insurance;
}
