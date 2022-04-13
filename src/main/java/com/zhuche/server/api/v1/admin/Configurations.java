/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.configuration.UpdateConfigurationRequest;
import com.zhuche.server.dto.request.configuration.UpdateInsuranceRequest;
import com.zhuche.server.dto.request.configuration.UpdateOrderAgreementRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Configuration;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.ConfigurationService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@AllArgsConstructor
@Validated
@RequestMapping("/api/v1/configuration")
public class Configurations {
    private final ConfigurationService configurationService;

    @GetMapping
    public UnityResponse  getConfigurations() {
        var configuration = configurationService.getConfiguration();
        return UnityResponse.builder()
            .data(configuration)
            .build();
    }

    @PatchMapping
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "更新配置",
        type = LogType.UPDATED
    )
    public UnityResponse updateConfiguration(@RequestBody UpdateConfigurationRequest request) {
        final var configuration = configurationService.updateConfiguration(request);

        return UnityResponse.builder()
            .data(configuration)
            .build();
    }


    @PatchMapping("/insurance")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "更新保险费",
        type = LogType.UPDATED
    )
    public UnityResponse updateInsurance(
        @RequestBody @Valid UpdateInsuranceRequest request
    ) {
        final Configuration newConfig  = configurationService.updateInsurance(request.getInsurance());

        return UnityResponse.builder()
            .data(newConfig)
            .build();
    }

    @PatchMapping("/orderAgreements")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "更新订单协议",
        type = LogType.UPDATED
    )
    public UnityResponse updateOrderAgreements(
        @RequestBody @Valid UpdateOrderAgreementRequest request
    ) {
        final Configuration newConfig  = configurationService.updateOrderAgreements(request);

        return UnityResponse.builder()
            .data(newConfig)
            .build();
    }
}
