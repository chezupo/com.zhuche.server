/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/14
 * Listen  MIT
 */

package com.zhuche.server.validators;

import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.exceptions.MyRuntimeException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Parameter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Slf4j
public class ParamsNotNullInterceptor extends HandlerInterceptorAdapter{

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
        throws Exception {
        if (!(handler instanceof HandlerMethod)) {
            log.warn("UnSupport handler");
            return true;
        }
        List<String> list = getParamsName((HandlerMethod) handler);
        for (var paramName: list) {
            request.getParameter(paramName);
            if (paramName.isEmpty()) {
                String errorMessage = getAnnotationMessage((HandlerMethod) handler);
                throw new MyRuntimeException(
                    ExceptionCodeConfig.AUTHORIZATION_ERROR_TYPE,
                    errorMessage
                );
            }
        }
        return true;
    }

    /**
     * 拿到在参数上加了该注解的参数名称
     */
    private List getParamsName(HandlerMethod handlerMethod) throws NoSuchFieldException {
       var parameters = handlerMethod.getMethod().getParameters();

        List<String> list = new ArrayList<String>();
        // :xxx 这里有问题 不能使流处理的写法
//        var i = Arrays.stream(parameters).toList();
//        i.stream()
//            .filter(item -> {
//                var isOk =  item.isAnnotationPresent(ParamsNotNull.class);
//
//                return isOk;
//            } )
//            .map(item -> {
//                return list.add(item.getName());
//            });
        for (Parameter parameter : parameters) {
            if(parameter.isAnnotationPresent(ParamsNotNull.class)){

                list.add(parameter.getName());
            }
        }

        return list;
    }

    private String getAnnotationMessage(HandlerMethod handlerMethod) {
        Parameter[] parameters = handlerMethod.getMethod().getParameters();

        return Arrays.stream(parameters)
            .findFirst()
            .map(item -> item.getAnnotation(ParamsNotNull.class))
            .get()
            .message();
    }
}
