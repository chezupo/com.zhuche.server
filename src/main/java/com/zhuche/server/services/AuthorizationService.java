/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.request.authorizatioins.CreateAuthorizationTokenRequest;
import com.zhuche.server.dto.response.authorization.CreateAuthorizationTokenResponse;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import org.springframework.stereotype.Service;

@Service
public class AuthorizationService {
    private final UserRepository userRepository;

    private final JWTUtil jwtUtil;

    AuthorizationService(
        UserRepository userRepository,
        JWTUtil jwtUtil
    ) {
        this.userRepository = userRepository;
        this.jwtUtil = jwtUtil;
    }

    public CreateAuthorizationTokenResponse createToken(CreateAuthorizationTokenRequest authRequest) {
        var user = userRepository.findUserByUsername(authRequest.getUsername());
        var res = jwtUtil.generateToken(user);
        res.setRoles(user.getRoles());

        return res;
    }
}
