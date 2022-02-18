/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.admin.clients.admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jayway.jsonpath.JsonPath;
import com.zhuche.server.BaseClientAbstract;
import com.zhuche.server.dto.request.authorizatioins.CreateAuthorizationTokenRequest;
import com.zhuche.server.dto.request.banners.CreateBannerRequest;
import com.zhuche.server.dto.request.banners.UpdateBannerRequest;
import com.zhuche.server.model.Banner;
import com.zhuche.server.rest.api.BannerResource;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import static org.hamcrest.Matchers.is;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayName("Testing the processing of  banner CRUD for admin role.")
@Slf4j
@AutoConfigureMockMvc
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
public class BannerCRUDProcess extends BaseClientAbstract {

    private static Banner banner;

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
    @DisplayName("Should return the list of banners.")
    public void shouldReturnListOfBannerTest() throws Exception {
        var res = bannerResource.getBanners();
        res.andExpect( jsonPath("$.data.currentPage").isNumber() );
        res.andExpect( jsonPath("$.data.list").isArray());
        res.andExpect( jsonPath("$.data.list[0].id").isNumber());
        res.andExpect( jsonPath("$.data.list[0].imgKey").isString());
        res.andExpect( jsonPath("$.data.list[0].content").isString());
        res.andExpect( jsonPath("$.data.total").isNumber());
        res.andExpect( jsonPath("$.data.size").isNumber());
        var jsonResponse = res.andReturn().getResponse().getContentAsString();
        ObjectMapper mapper = new ObjectMapper();
        var firstBannerObj = JsonPath.read(jsonResponse,"$.data.list[0]");
        banner = mapper.readValue( mapper.writeValueAsString(firstBannerObj), Banner.class);
    }

    @Test
    @Order(4)
    @DisplayName("Should return the updated banner information.")
    public void shouldReturnUpdatedBannerTest() throws Exception {
        var content = "content";
        var imgKey = "imgKey";
        var requestBody = UpdateBannerRequest.builder()
            .imgKey(imgKey)
            .content(content)
            .build();
        var id = (Integer) banner.getId().intValue();
        var res = bannerResource.updateBanner(id, requestBody, token);
        res.andExpect( jsonPath("$.data.content", is(content)));
        res.andExpect( jsonPath("$.data.imgKey", is(imgKey)));
        res.andExpect( jsonPath("$.data.id", is(id)));
    }

    @Test
    @Order(5)
    @DisplayName("Should return the successful response.")
    public void shouldDestroyBannerTest() throws Exception {
        bannerResource.deleteBanner((Integer) banner.getId().intValue(), token);
    }
}
