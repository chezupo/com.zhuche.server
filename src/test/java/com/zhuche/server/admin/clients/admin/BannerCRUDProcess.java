/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.admin.clients.admin;

import com.zhuche.server.BaseClientAbstract;
import com.zhuche.server.dto.request.authorizatioins.CreateAuthorizationTokenRequest;
import com.zhuche.server.dto.request.banners.CreateBannerRequest;
import com.zhuche.server.rest.api.BannerResource;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import static net.bytebuddy.matcher.ElementMatchers.isArray;
import static org.hamcrest.Matchers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayName("Testing the processing of  banner CRUD for admin role.")
@Slf4j
@AutoConfigureMockMvc
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
public class BannerCRUDProcess extends BaseClientAbstract {

    @Autowired
    private BannerResource bannerResource;

    private static String token;

    private final String username = "admin";
    private final String password = "12345678";

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

    @Test
    @Order(2)
    @DisplayName("Should return the new banner infomation.")
    public void shouldReturnBannerInfoTest() throws Exception {
        log.info("AccessToken", token);
        var requestBody= CreateBannerRequest.builder()
            .imgKey("bannerKey")
            .content("bannerContent")
            .build();
        bannerResource.createBanner(requestBody, token);
    }

    @Test
    @Order(3)
    @DisplayName("Should return the new banner information.")
    public void shouldReturnListOfBannerTest() throws Exception {
        var res = bannerResource.getBanners();
        res.andExpect( jsonPath("$.data.currentPage").isNumber() );
        res.andExpect( jsonPath("$.data.list").isArray());
        res.andExpect( jsonPath("$.data.list[0].id").isNumber());
        res.andExpect( jsonPath("$.data.list[0].imgKey").isString());
        res.andExpect( jsonPath("$.data.list[0].content").isString());
        res.andExpect( jsonPath("$.data.total").isNumber());
    }
}
