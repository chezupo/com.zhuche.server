/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/15
 * Listen  MIT
 */

package com.zhuche.server.rest.api;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import java.nio.charset.Charset;

import static org.hamcrest.CoreMatchers.is;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@Slf4j
public abstract class BaseAbstract {
    public static final MediaType APPLICATION_JSON_UTF8 = new MediaType(MediaType.APPLICATION_JSON.getType(), MediaType.APPLICATION_JSON.getSubtype(), Charset.forName("utf8"));

    private final static String BASE_URL = "/api/v1";

    @Autowired
    private MockMvc mockMvc;

    protected ResultActions postRequest(String url, String requestBody) throws Exception {
        return this.mockMvc.perform(
                post(BASE_URL + url) .contentType(APPLICATION_JSON_UTF8) .content(requestBody)
            )
            .andDo(print())
            .andExpect( status().isOk() )
            .andExpect( content() .contentTypeCompatibleWith(MediaType.APPLICATION_JSON) )
            .andExpect( jsonPath("isSuccess", is(true)) );

    }

    protected ResultActions postRequest(String url, String requestBody, String token) throws Exception {
        return this.mockMvc.perform(
                post(BASE_URL + url)
                    .contentType(APPLICATION_JSON_UTF8)
                    .content(requestBody)
                    .header("Authorization", "Bearer " + token)
            )
            .andDo(print())
            .andExpect( status().isOk() )
            .andExpect( content() .contentTypeCompatibleWith(MediaType.APPLICATION_JSON) )
            .andExpect( jsonPath("isSuccess", is(true)) );
    }

    protected ResultActions getRequest(String url) throws Exception {
        return this.mockMvc.perform( get(BASE_URL + url) )
            .andDo(print())
            .andExpect( status().isOk() )
            .andExpect( content() .contentTypeCompatibleWith(MediaType.APPLICATION_JSON) )
            .andExpect( jsonPath("isSuccess", is(true)) );
    }

    protected ResultActions patchRequest(String url, String requestBody, String token) throws Exception {
        return this.mockMvc.perform(
                        patch(BASE_URL + url)
                                .contentType(APPLICATION_JSON_UTF8)
                                .content(requestBody)
                                .header("Authorization", "Bearer " + token)
                )
                .andDo(print())
                .andExpect( status().isOk() )
                .andExpect( content() .contentTypeCompatibleWith(MediaType.APPLICATION_JSON) )
                .andExpect( jsonPath("isSuccess", is(true)) );
    }

    protected ResultActions deleteRequest(String url, String token) throws Exception {
        return this.mockMvc.perform(
                        delete(BASE_URL + url)
                                .contentType(APPLICATION_JSON_UTF8)
                                .header("Authorization", "Bearer " + token)
                )
                .andDo(print())
                .andExpect( status().isOk() )
                .andExpect( content() .contentTypeCompatibleWith(MediaType.APPLICATION_JSON) )
                .andExpect( jsonPath("isSuccess", is(true)) );
    }
}
