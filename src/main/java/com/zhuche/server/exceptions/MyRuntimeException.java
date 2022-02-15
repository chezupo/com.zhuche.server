/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.exceptions;

import com.zhuche.server.config.exception.ExceptionCodeConfig;
import lombok.Getter;

public class MyRuntimeException extends java.lang.RuntimeException {
    @Getter
    private final ExceptionCodeConfig exceptionCodeConfig;

    public MyRuntimeException(ExceptionCodeConfig exceptionCodeConfig) {
        this.exceptionCodeConfig = exceptionCodeConfig;
    }

    public MyRuntimeException(ExceptionCodeConfig exceptionCodeConfig, String errorMessage) {
        this.exceptionCodeConfig = exceptionCodeConfig;
        this.exceptionCodeConfig.setErrorMessage(errorMessage);
    }

    public Integer getErrorCode() {
        return this.exceptionCodeConfig.getErrorCode();
    }

    public void setMessage(String message) {
        this.exceptionCodeConfig.setErrorMessage(message);
    }

    @Override
    public String getMessage() {
        return this.exceptionCodeConfig.getErrorMessage();
    }

    @Override
    public StackTraceElement[] getStackTrace() {
        return super.getStackTrace();
    }
}
