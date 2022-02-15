/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.config.exception;

import com.zhuche.server.exceptions.MyRuntimeException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
@Slf4j
@ResponseBody
public class GlobalExceptionHandler {

    // 不想处理的异常
    @ExceptionHandler(RuntimeException.class)
    public Map<String, Object> handle(RuntimeException  e) {
        var err = new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE);
            err.setStackTrace(e.getStackTrace());
            err.setMessage(e.getMessage());

        return this.getResponseByException(err);
    }

    // 验证异常
    @ExceptionHandler(BindException.class)
    public Map<String, Object> handle(BindException e) {
        var errObject = e.getBindingResult().getAllErrors().stream().findFirst().get();
        var err = new MyRuntimeException(ExceptionCodeConfig.VALIDATED_ERROR_TYPE);
        err.setStackTrace(e.getStackTrace());
        err.setMessage( String.format("%s %s", errObject.getObjectName(), errObject.getDefaultMessage()) );

        return this.getResponseByException(err);
    }

    // 自己抛的异常
    @ExceptionHandler(MyRuntimeException.class)
    public Map<String, Object> handle(MyRuntimeException  e) {
        return this.getResponseByException(e);
    }

    private Map<String, Object> getResponseByException(MyRuntimeException e) {
        var response = new HashMap<String, Object>();
        response.put("isSuccess", false);
        response.put("errorMessage", e.getMessage());
        response.put("errorCode", e.getErrorCode());
        log.error("Application error in: [" + e.getClass().getName() + "]", e);

        return response;
    }
}
