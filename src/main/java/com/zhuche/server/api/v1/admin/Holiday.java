package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.holiday.SetHolidayRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.HolidayService;
import com.zhuche.server.validators.holiday.CheckHolidayIdMustBeExist;
import com.zhuche.server.validators.holiday.CheckMonthTimeStamp;
import lombok.AllArgsConstructor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/v1/holidays")
@Validated
@AllArgsConstructor
public class Holiday {
    private final HolidayService holidayService;

    @PatchMapping
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "配置节假日",
        type = LogType.UPDATED
    )
    public UnityResponse updateHoliday(
        @RequestBody @Valid SetHolidayRequest request
        ) {
        final com.zhuche.server.model.Holiday newHoliday = holidayService.setHoliday(request);

        return UnityResponse.builder()
            .data(newHoliday)
            .build();
    }

    @GetMapping
    public UnityResponse getHolidays(
        @Param("dateTimeStamp") @CheckMonthTimeStamp Long dateTimeStamp
    ) {
        final List<com.zhuche.server.model.Holiday> newHolidayList = holidayService.getHolidays(dateTimeStamp);

        return UnityResponse.builder()
            .data(newHolidayList)
            .build();
    }

    @DeleteMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "删除节假日",
        type = LogType.UPDATED
    )
    public UnityResponse deleteHoliday(
        @PathVariable("id") @CheckHolidayIdMustBeExist Long id
    ) {
        holidayService.deleteHolidayById(id);

        return UnityResponse.builder()
            .build();
    }
}
