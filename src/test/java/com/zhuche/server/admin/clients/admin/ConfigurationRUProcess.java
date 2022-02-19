/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/20
 * Listen  MIT
 */

package com.zhuche.server.admin.clients.admin;

import com.zhuche.server.dto.request.configuration.UpdateConfigurationRequest;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.*;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import static org.hamcrest.Matchers.is;
import static org.springframework.test.web.client.match.MockRestRequestMatchers.jsonPath;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayName("Testing the processing of configuration CRUD for admin role.")
@Slf4j
@AutoConfigureMockMvc
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
public class ConfigurationRUProcess extends BaseAdminRoleProcess{
    private String url = "/configuration";

    @Test
    @Order(2)
    @DisplayName("Should return the updated configuration.")
    public void shouldReturnUpdatedConfigurationTest() throws Exception {
        final var appName = "appName";
        final var logo  = "logo";
        final var updateRequestData = UpdateConfigurationRequest.builder()
            .appName(appName)
            .logo(logo)
            .build();
        final var res = patchRequest(url, updateRequestData, token);
        res.andExpect( MockMvcResultMatchers.jsonPath("$.data.appName", is(appName)));
        res.andExpect( MockMvcResultMatchers.jsonPath("$.data.logo", is(logo)));
    }

}
