/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.request.configuration.UpdateConfigurationRequest;
import com.zhuche.server.dto.request.configuration.UpdateOrderAgreementRequest;
import com.zhuche.server.dto.request.configuration.UpdatePromotionConfigurationRequest;
import com.zhuche.server.dto.response.configuration.Configuration;
import com.zhuche.server.repositories.ConfigurationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

@Service
public class ConfigurationService {
    private static  String prefixUrl;

    public static String getPrefixUrl() {
        return prefixUrl;
    }

    @Value("${disk.qiniu.prefixUrl}")
    private String prefix;

    @PostConstruct
    private void init() {
        prefixUrl = prefix;
    }


    @Value("${amap.key}")
    public String mapKey;

    @Value("${amap.searchKey}")
    public String mapSearchKey;

    @Autowired
    private ConfigurationRepository configurationRepository;

    private Long id = 1L;

    private Configuration formatResponse(com.zhuche.server.model.Configuration configuration) {
        return Configuration.builder()
            .imgPrefix(prefix)
            .appName(configuration.getAppName())
            .logo(configuration.getLogo())
            .amapKey(mapKey)
            .insuranceAgreement(configuration.getInsuranceAgreement())
            .orderAgreement(configuration.getOrderAgreement())
            .servicePhone(configuration.getServicePhone())
            .insurance(configuration.getInsurance())
            .amapSearchKey(mapSearchKey)
            .notice(configuration.getNotice())
            .promotionLevel1(configuration.getPromotionLevel1())
            .promotionLevel2(configuration.getPromotionLevel2())
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
        configuration.setNotice(request.getNotice());
        configuration.setServicePhone(request.getServicePhone());
        configurationRepository.save(configuration);

        return formatResponse( configuration);
    }

    public com.zhuche.server.model.Configuration updateInsurance(Float insurance) {
        final var configuration = configurationRepository.findById(id).get();
        configuration.setInsurance(insurance);

       return configurationRepository.save(configuration);
    }

    public com.zhuche.server.model.Configuration updateOrderAgreements(UpdateOrderAgreementRequest request) {
        final var configuration = configurationRepository.findById(id).get();
        configuration.setInsuranceAgreement(request.getInsuranceAgreement());
        configuration.setOrderAgreement(request.getOrderAgreement());

        return configurationRepository.save(configuration);
    }

    public Configuration updatePromotionConfiguration(UpdatePromotionConfigurationRequest request) {
        final var configuration = configurationRepository.findById(id).get();
        configuration.setPromotionLevel1(request.getPromotionLevel1());
        configuration.setPromotionLevel2(request.getPromotionLevel2());
        configurationRepository.save(configuration);

        return formatResponse( configuration);
    }
}
