package com.zhuche.server.dto.response.dashboard;

import com.zhuche.server.model.Log;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DashboardResponse {
    private Long todayOrderCount;

    private Long userCount;

    private Double todayAmount;

    private List<WeekUserAndOrderItem> weekUserAndOrderItems;

    private List<Log> logs;
}
