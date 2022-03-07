package com.zhuche.server.dto.response.division;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AreaResponse {
    private String code;

    private String name;

    private CityResponse city;
}

