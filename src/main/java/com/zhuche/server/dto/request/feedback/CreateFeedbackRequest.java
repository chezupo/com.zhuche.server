package com.zhuche.server.dto.request.feedback;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CreateFeedbackRequest {
    @NotBlank
    private String flag;

    @NotBlank
    private String content;

    @NotBlank
    private String phone;

    private String email;
}
