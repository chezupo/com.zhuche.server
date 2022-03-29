/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/28
 * Listen  MIT
 */

package com.zhuche.server.config.aop;

import com.alibaba.fastjson.JSON;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.repositories.LogRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@Aspect
@Component("logComponent")
@AllArgsConstructor
@Slf4j
public class LogAspect {
    private final JWTUtil jwtUtil;
    private final LogRepository logRepository;

    @Pointcut("@annotation(com.zhuche.server.config.interceptors.Permission)")
    public void operLogPoinCut() { }

    /**
     * 设置操作异常切入点记录异常日志 扫描所有controller包下操作
     */
    @Pointcut("execution(* com.zhuche.server.api..*.*(..))")
    public void operExceptionLogPoinCut() {
    }

    @AfterReturning(value = "operLogPoinCut()", returning = "keys")
    public void saveLog(JoinPoint joinPoint, Object keys) {
        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = (HttpServletRequest) requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST);
        String params = JSON.toJSONString(joinPoint.getArgs());
        final var newLog = new com.zhuche.server.model.Log();
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        Permission permission = method.getAnnotation(Permission.class);
        newLog.setParams(params);
        if (permission != null && permission.isLog()) {
            try {
                newLog.setUser(jwtUtil.getUser());
                newLog.setDescription(permission.desc());
                newLog.setRequestPath(request.getRequestURI());
                newLog.setTitle(permission.title());
                newLog.setType(permission.type());
                newLog.setCreatedAt(LocalDateTime.now());
                String className = joinPoint.getTarget().getClass().getName();
                String methodName = method.getName();
                methodName = className + "." + methodName;
                newLog.setClassName(methodName);
                logRepository.save(newLog);
            } catch(Exception e){
                e.printStackTrace();
                throw e;
            }
        }
    }

    /**
     * 转换request 请求参数
     *
     * @param paramMap request获取的参数数组
     */
    public Map<String, String> converMap(Map<String, String[]> paramMap) {
        Map<String, String> rtnMap = new HashMap<String, String>();
        for (String key : paramMap.keySet()) {
            rtnMap.put(key, paramMap.get(key)[0]);
        }
        return rtnMap;
    }
}
