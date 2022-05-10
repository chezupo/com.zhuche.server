package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.configuration.UpdatePromotionConfigurationRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.dto.response.configuration.Configuration;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.ConfigurationService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.ConfigurationCondition;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/promotion")
@Slf4j
@Validated
@AllArgsConstructor
public class Promotion {
    private final ConfigurationService configurationService;

    @GetMapping
    public UnityResponse getSetting() {
        return UnityResponse.builder().data(
            configurationService.getConfiguration()
        ).build();
    }

    @PutMapping
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "修改推广设置",
        type = LogType.UPDATED
    )
    public UnityResponse setSetting(
        @RequestBody @Valid UpdatePromotionConfigurationRequest request
    ) {
        Configuration res =  configurationService.updatePromotionConfiguration(request);

        return UnityResponse.builder().data( res ).build();
    }
}
