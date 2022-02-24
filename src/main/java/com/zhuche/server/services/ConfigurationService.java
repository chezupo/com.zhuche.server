/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.request.configuration.UpdateConfigurationRequest;
import com.zhuche.server.dto.response.configuration.Configuration;
import com.zhuche.server.repositories.ConfigurationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class ConfigurationService {

    @Value("${disk.qiniu.prefixUrl}")
    public String prefixUrl;

    @Value("${amap.key}")
    public String mapKey;

    @Autowired
    private ConfigurationRepository configurationRepository;

    private Long id = 1L;

    private Configuration formatResponse(com.zhuche.server.model.Configuration configuration) {
        return Configuration.builder()
            .imgPrefix(prefixUrl)
            .appName(configuration.getAppName())
            .logo(configuration.getLogo())
            .amapKey(mapKey)
            .build();
    }
    public Configuration getConfiguration() {
        final var configuration = configurationRepository.findById(id).get();

        return formatResponse( configuration);
    }


    public Configuration updateConfiguration(UpdateConfigurationRequest request) {
        final var configuration = configurationRepository.findById(id).get();
        configuration.setLogo(request.getLogo());
        configuration.setAppName(request.getAppName());
        configurationRepository.save(configuration);

        return formatResponse( configuration);
    }
}
