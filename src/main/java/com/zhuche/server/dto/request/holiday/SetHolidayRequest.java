package com.zhuche.server.dto.request.holiday;

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
public class SetHolidayRequest {
    @NotNull
    private Long day;

    @NotBlank
    private String mark;
}
