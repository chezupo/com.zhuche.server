/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.contexts;

import com.zhuche.server.model.User;
import com.zhuche.server.util.JWTUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthContext {
    @Autowired
    private JWTUtil jwtUtil;
    public User getMe() {
        return jwtUtil.getUser();
    }
}
