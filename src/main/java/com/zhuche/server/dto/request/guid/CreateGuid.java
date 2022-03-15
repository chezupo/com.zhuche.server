package com.zhuche.server.dto.request.guid;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CreateGuid {
    Long id;

    @NotBlank
    String title;

    @NotBlank
    String imgKey;
}
