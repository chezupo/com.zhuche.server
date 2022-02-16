/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.response.configuration.Configuration;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class ConfigurationService {

    @Value("${disk.qiniu.prefixUrl}")
    String prefixUrl;

    public Configuration getConfiguration() {
        return Configuration.builder()
            .imgPrefix(prefixUrl)
            .build();
    }
}
