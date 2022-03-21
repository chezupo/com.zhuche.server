/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/22
 * Listen  MIT
 */

package com.zhuche.server.api.v1.mini.program;


import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.ConfigurationService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("miniProgramConfiguration")
@RequestMapping("/api/v1/miniProgram/configurations")
@AllArgsConstructor
public class Configuration {
    private final ConfigurationService configurationService;

    @GetMapping
    public UnityResponse getConfiguration() {
        return UnityResponse.builder()
            .data( configurationService.getConfiguration())
            .build();
    }
}
