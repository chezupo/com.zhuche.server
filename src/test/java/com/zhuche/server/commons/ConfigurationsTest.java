/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.commons;

import com.zhuche.server.rest.api.BaseAbstract;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import static org.hamcrest.Matchers.is;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayName("Testing the api of common configuration.")
@Slf4j
@AutoConfigureMockMvc
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
public class ConfigurationsTest extends BaseAbstract {

    @Value("${disk.qiniu.prefixUrl}")
    String prefixUrl;

    @Test
    @Order(1)
    @DisplayName("Should return the common configurations.")
    public void shouldReturnConfiguration() throws Exception {
        var url = "/configuration";
        log.info("Getting the common Configurations: {}", url);
        var res = getRequest(url);
        res.andExpect(jsonPath("$.data.imgPrefix",is(prefixUrl)));
    }
}
