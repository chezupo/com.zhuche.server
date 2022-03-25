/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/14
 * Listen  MIT
 */

package com.zhuche.server.config.interceptors;

import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;
import java.util.Arrays;

@Component
@Slf4j
@AllArgsConstructor
public class PermissionInterceptor implements HandlerInterceptor {
    private final JWTUtil jwtUtil;

    private UserRepository userRepository;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (!(handler instanceof HandlerMethod)) {
            log.warn("UnSupport handler");
            return true;
        }
        var method = ((HandlerMethod) handler).getMethod();
        if (method.isAnnotationPresent(Permission.class)) permissionValidator(method, request);

        return HandlerInterceptor.super.preHandle(request, response, handler);
    }

    private void permissionValidator(Method method, HttpServletRequest request) {
        var roles = method.getAnnotation(Permission.class).roles();
        var user = jwtUtil.getUser();

        var accessRoleCount = Arrays.stream(roles)
            .filter(role -> user.getRoles().contains(role) )
                .count();
        if (accessRoleCount == 0) {
            String res = "";
            int index = 0;
            for (var role : roles) {
                index++;
                res += index == roles.length ? role.name() : role.name() + ", ";
            }
            String myRoleStr = "";
            index = 0;
            for (var role : user.getRoles()) {
                index++;
                myRoleStr += index == roles.length ? role.name() : role.name() + ", ";
            }


            throw new MyRuntimeException(
                ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_YOU_DONNOT_HAVE_ENOUGH_PRIVILEGES_TO_ACCESS,
                String.format("您当前权限角色为: %s, 本接口需要:%s 任一角色的账号才能访问", myRoleStr, res)
            );
        }
    }
}
