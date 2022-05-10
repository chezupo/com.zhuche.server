package com.zhuche.server.dto.request.configuration;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdatePromotionConfigurationRequest {
    private double promotionLevel1;

    private double promotionLevel2;

}
