package com.zhuche.server.dto.request.configuration;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdatePromotionConfigurationRequest {
    private BigDecimal promotionLevel1;

    private BigDecimal promotionLevel2;

}
