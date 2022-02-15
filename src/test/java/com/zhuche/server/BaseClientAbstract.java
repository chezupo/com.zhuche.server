/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server;

import com.zhuche.server.dto.request.authorizatioins.CreateAuthorizationTokenRequest;
import com.zhuche.server.rest.api.AuthorizationResource;
import lombok.extern.slf4j.Slf4j;
import net.minidev.json.JSONObject;
import net.minidev.json.JSONValue;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

@Slf4j
public abstract class BaseClientAbstract {
    @Autowired
    private AuthorizationResource authorizationResource;

    protected String getToken(CreateAuthorizationTokenRequest request) throws Exception {
        var res = authorizationResource.createToken(request);
        var json = res.andReturn()
            .getResponse()
            .getContentAsString();
        JSONObject jsonObject = (JSONObject) JSONValue.parse(json);
        return  ((Map<String, String>) jsonObject.get("data")).get("accessToken");
    }
}
