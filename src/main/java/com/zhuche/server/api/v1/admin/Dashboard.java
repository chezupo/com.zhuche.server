package com.zhuche.server.api.v1.admin;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.dto.response.dashboard.DashboardResponse;
import com.zhuche.server.services.DashboardService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
@Validated
@RequestMapping("/api/v1/dashboard")
public class Dashboard {
    private DashboardService dashboardService;

    @GetMapping
    public UnityResponse getDashboard() {
        final DashboardResponse res = DashboardResponse.builder()
            .todayOrderCount(dashboardService.getTodayOrderCount())
            .userCount(dashboardService.getUserCount())
            .todayAmount(dashboardService.getTodayAmount())
            .weekUserAndOrderItems(dashboardService.getWeekUserAndOrderItems())
            .logs(dashboardService.getLogs())
            .build();

        return UnityResponse.builder().data(res).build();
    }
}
