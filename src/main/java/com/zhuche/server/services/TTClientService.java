/**
 * 字节跳动客户端
 */
package com.zhuche.server.services;

import com.alibaba.fastjson.JSON;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.HashMap;
import java.util.Map;

@Service
@Slf4j
public class TTClientService {
    @Value("${tt.appId}")
    private String appId;

    @Value("${tt.secret}")
    private String secret;


    public void auth(String code) throws IOException, URISyntaxException, InterruptedException {
//        Map<String, String> body = new HashMap<>();
//        body.put("appid", appId);
//        body.put("secret", secret);
//        body.put("anonymous_code", code);
//        HttpRequest request = HttpRequest.newBuilder()
//            .uri(new URI("https://developer.toutiao.com/api/apps/v2/jscode2session"))
//            .version(HttpClient.Version.HTTP_2)
//            .header("Content-Type", "application/json; utf-8")
//            .POST( HttpRequest.BodyPublishers.ofString( JSON.toJSONString(body) ) )
//            .build();
//        HttpClient client = HttpClient.newHttpClient();
//        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
//
//        log.info("{}", response.body());
    }
}