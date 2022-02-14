/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.config.exception;

import com.zhuche.server.model.Role;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.PasswordEncodeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.List;

@Component
@Slf4j
public class InitDatabaseSeeder {
    private final UserRepository userRepository;
    private final PasswordEncodeUtil passwordEncodeUtil;

    public InitDatabaseSeeder(
        UserRepository userRepository,
        PasswordEncodeUtil passwordEncodeUtil
    ) {
        this.userRepository = userRepository;
        this.passwordEncodeUtil = passwordEncodeUtil;
        this.initUser();
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
}
