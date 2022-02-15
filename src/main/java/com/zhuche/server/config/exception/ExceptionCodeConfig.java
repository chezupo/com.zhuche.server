/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/14
 * Listen  MIT
 */

package com.zhuche.server.config.exception;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

public enum ExceptionCodeConfig {
    // 内部错误
    INTERIOR_ERROR_TYPE(50000, "The error occurred inside the server."), // 内部错误

    // 登录错误
    AUTHORIZATION_ERROR_TYPE(40100, "Login failure."), // 登录错误

    // 鉴权错误
    UN_AUTHORIZATION_ERROR_TOKEN_CANNOT_BE_EMPTY(40200, "Token cannot empty."),
    UN_AUTHORIZATION_ERROR_UN_VALID_TOKEN(40201, "Unvalid token."),
    UN_AUTHORIZATION_ERROR_NO_SUCH_USER(40202, "No relative user,the token invalid"),
    UN_AUTHORIZATION_ERROR_ACCESS_DISABLE(40203, "Accessing disable, please ask the administrator."),
    UN_AUTHORIZATION_ERROR_YOU_DONNOT_HAVE_ENOUGH_PRIVILEGES_TO_ACCESS(40204, "You do not have enough privileges to access."),

    // 验证错误
    VALIDATED_ERROR_TYPE(40300, "Validation error occurred."), // 验证错误
    ;

    @Getter
    private int errorCode;

    @Getter
    @Setter
    private String errorMessage;

    ExceptionCodeConfig(int errorCode, String errorMessage) {
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }

    @ConfigurationProperties(prefix = "exception")
    @PropertySource(value = "classpath:config/errorCodeMapMessage.properties", encoding = "UTF-8")
    @Component
    @Slf4j
    private static class InitializeErrorCodeConfig {
        @Getter
        private Map<Integer, String> errorCodeMapMessage = new HashMap<>();

        @PostConstruct
        private void init() {
            for (ExceptionCodeConfig errorCodeConfig : EnumSet.allOf(ExceptionCodeConfig.class)) {
                final var message = this.errorCodeMapMessage.get(errorCodeConfig.getErrorCode());
                if (message != null) {
                    errorCodeConfig.setErrorMessage(message);
                }
            }
        }
    }
}