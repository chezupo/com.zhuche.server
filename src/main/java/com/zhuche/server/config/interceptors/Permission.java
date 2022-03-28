package com.zhuche.server.config.interceptors;

import com.zhuche.server.model.Log;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Permission {
    Role[] roles();
    String title() default "";
    LogType type() default LogType.CREATED;
    boolean isLog() default false;
}
