/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/15
 * Listen  MIT
 */

package com.zhuche.server.admin.clients.admin;

import com.zhuche.server.dto.request.authorizatioins.CreateAuthorizationTokenRequest;
import com.zhuche.server.rest.api.AuthorizationResource;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayName("Testing the process login for Admin role.")
@Slf4j
@AutoConfigureMockMvc
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
public class LoginProcess implements com.zhuche.server.admin.clients.LoginProcess {
    @Autowired
    private AuthorizationResource authorizations;

    @Override
    @Test
    @Order(1)
    @DisplayName("Should return the token for login.")
    public void shouldReturnAccessTokenTest() throws Exception {
        var account = CreateAuthorizationTokenRequest.builder()
            .password("12345678")
            .username("admin")
            .build();

        authorizations.createToken(account);
    }

}
