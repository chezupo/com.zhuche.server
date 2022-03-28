/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/28
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.LogService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.server.PathParam;

@RestController("adminLog")
@RequestMapping("/api/v1/logs")
@AllArgsConstructor
@Validated
public class Log {
    private final LogService logService;


    @GetMapping
    @Permission(
        roles = {Role.ROLE_ADMIN}
    )
    public UnityResponse getLogs(
        @PathParam("page") Integer page,
        @PathParam("size") Integer size
    ) {
        final PageFormat pageData = logService.getLogs(page, size);

        return UnityResponse
            .builder()
            .data(pageData)
            .build();
    }
}
