package com.zhuche.server.dto.response.dashboard;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class WeekUserAndOrderItem {
    private String name;

    private Long userCount;

    private Long orderCount;
}
