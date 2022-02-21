/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/16
 * Listen  MIT
 */

package com.zhuche.server.config;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.AlipayConfig;
import com.alipay.api.DefaultAlipayClient;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@Slf4j
public class AlipayClientConfig {

    @Value("${alipay.privateKey}")
    private String privateKey;

    @Value("${alipay.serverUrl}")
    private String serverUrl;

    @Value("${alipay.appid}")
    private String appid;

    @Value("${alipay.alipayPublicKey}")
    private String alipayPublicKey;

    @Bean
    public AlipayClient alipayClient() throws AlipayApiException {
        var alipayConfig = new AlipayConfig();
        alipayConfig.setServerUrl(serverUrl);
        alipayConfig.setAppId(appid);
        alipayConfig.setPrivateKey(privateKey);
        alipayConfig.setFormat("json");
        alipayConfig.setCharset("UTF-8");
        alipayConfig.setAlipayPublicKey(alipayPublicKey);
        alipayConfig.setSignType("RSA2");
        log.info("Loaded Alipay private key: {}", privateKey);

        return  new DefaultAlipayClient(alipayConfig);
    }

}
