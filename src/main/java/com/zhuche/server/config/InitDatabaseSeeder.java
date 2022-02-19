/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.config;

import com.zhuche.server.model.Configuration;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.ConfigurationRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.PasswordEncodeUtil;
import org.springframework.beans.factory.annotation.Value;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.List;

@Component
@Slf4j
public class InitDatabaseSeeder {
    private final UserRepository userRepository;

    private final PasswordEncodeUtil passwordEncodeUtil;

    private final ConfigurationRepository configurationRepository;

    private final String appName;

    private final String logo;

    public InitDatabaseSeeder(
        UserRepository userRepository,
        PasswordEncodeUtil passwordEncodeUtil,
        ConfigurationRepository configurationRepository,
        @Value("${initAppName}") String appName,
        @Value("${initLogo}") String logo
    ) {
        this.appName = appName;
        this.logo = logo;
        this.userRepository = userRepository;
        this.passwordEncodeUtil = passwordEncodeUtil;
        this.configurationRepository = configurationRepository;
        this.initUser();
        this.initConfiguration();
    }

    private void initUser() {
        final var res = userRepository.findUserById(1L);
        final var count = userRepository.count();
        if (res == null && count == 0) {
            var adminPassword = "12345678";
            var adminUsername = "admin";
            log.info("Initialized the account of user. adminUsername: {}, adminPassword: {} .", adminUsername, adminPassword);
            var newUser = User.builder()
                .password(passwordEncodeUtil.encode(adminPassword))
                .username(adminUsername)
                .roles(List.of(Role.ROLE_ADMIN))
                .isEnabled(true)
                .createdAt(LocalDateTime.now())
                .updatedAt(LocalDateTime.now())
                .build();
            userRepository.save(newUser);
        }
    }

    private void initConfiguration() {
        final var count = configurationRepository.count();
        if (count == 0) {
           final var configuration =  Configuration.builder()
                .appName(appName)
                .logo(logo)
                .build();
           configurationRepository.save(configuration);
        }
    }
}
