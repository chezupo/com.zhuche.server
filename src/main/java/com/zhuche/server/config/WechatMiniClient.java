package com.zhuche.server.config;

import cn.binarywang.wx.miniapp.api.WxMaService;
import cn.binarywang.wx.miniapp.api.impl.WxMaServiceImpl;
import cn.binarywang.wx.miniapp.config.impl.WxMaDefaultConfigImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Slf4j
@Configuration
public class WechatMiniClient {
    @Value("${wx.appid}")
    private String appid;

    @Value("${wx.secret}")
    private String secret;
    @Value("${wx.token}")
    private String token;
    @Value("${wx.aesKey}")
    private String aesKey;

    @Value("${wx.msgDataFormat}")
    private String msgDataFormat;

    @Bean
    public WxMaService wxMaService() {
        WxMaDefaultConfigImpl config = new WxMaDefaultConfigImpl();
        config.setAppid(appid);
        config.setSecret(secret);
        config.setToken(token);
        config.setAesKey(aesKey);
        config.setMsgDataFormat(msgDataFormat);
        WxMaService maService = new WxMaServiceImpl();
        maService.setWxMaConfig(config);

        return maService;
    }
}
