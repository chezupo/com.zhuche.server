package com.zhuche.server.dto.request.agreement;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UpdateAgreementRequest {
    @NotBlank
    private String title;

    @NotBlank
    private String content;
}
