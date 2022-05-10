package com.zhuche.server.dto.request.promotionalPoster;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class CreatePromotionalPosterRequest {
    @NotBlank
    private String url;

    @NotNull
    private BigDecimal size;

    @NotNull
    private BigDecimal positionX;

    @NotNull
    private BigDecimal positionY;
}
