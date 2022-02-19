/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/20
 * Listen  MIT
 */

package com.zhuche.server.admin.clients.admin;

import com.zhuche.server.BaseClientAbstract;
import com.zhuche.server.dto.request.authorizatioins.CreateAuthorizationTokenRequest;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;

public abstract class BaseAdminRoleProcess extends BaseClientAbstract {
    private final String username = "admin";

    private final String password = "12345678";

    protected static String token;

    @Test
    @Order(1)
    @DisplayName("Initialize BannerCRUDProcess")
    public void init() throws Exception {
        var loginBody = CreateAuthorizationTokenRequest
            .builder()
            .username(username)
            .password(password)
            .build();

        token =  this.getToken(loginBody);
    }
}
