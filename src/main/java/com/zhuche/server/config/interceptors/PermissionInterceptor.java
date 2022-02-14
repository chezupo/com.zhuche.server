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
        String bearerToken = request.getHeader("Authorization");
        if  (bearerToken == null) {
            throw new MyRuntimeException( ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_TOKEN_CANNOT_BE_EMPTY );
        }
        final var tokenPrefix = "Bearer ";

        if (bearerToken.length() <= 7 || !bearerToken.startsWith(tokenPrefix)) {
            throw new MyRuntimeException(ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_UN_VALID_TOKEN);
        }
        bearerToken = bearerToken.split(" ")[1];

        if (!jwtUtil.validateToken(bearerToken)) {
            throw new MyRuntimeException(ExceptionCodeConfig.AUTHORIZATION_ERROR_TYPE);
        }
        final var username = jwtUtil.getUsernameFromToken(bearerToken);
        final var user = userRepository.findUserByUsername(username);
        if (user == null) throw new MyRuntimeException(ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_NO_SUCH_USER);
        if (!user.getIsEnabled())  throw new MyRuntimeException(ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_ACCESS_DISABLE);

        var accessRoleCount = Arrays.stream(roles)
            .filter(role -> user.getRoles().contains(role) )
                .count();
        if (accessRoleCount == 0) {
            throw new MyRuntimeException(ExceptionCodeConfig.UN_AUTHORIZATION_ERROR_YOU_DONNOT_HAVE_ENOUGH_PRIVILEGES_TO_ACCESS);
        }
    }
}
