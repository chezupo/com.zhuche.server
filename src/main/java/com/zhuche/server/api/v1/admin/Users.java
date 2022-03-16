package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.validators.user.HasUserValidator;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
@RequestMapping("/api/v1/users")
@Validated
@RequiredArgsConstructor
public class Users {
    private final UserRepository userRepository;

    @Permission(roles = {Role.ROLE_ADMIN})
    @RequestMapping("/{username}")
    public UnityResponse getUser(@PathVariable("username") @HasUserValidator String username) {
        var user = userRepository.findUserByUsername(username);
        return UnityResponse.builder()
            .data(user)
            .build();
    }

    @Permission(roles = {Role.ROLE_ADMIN})
    @RequestMapping("/{username}/hasUser")
    public UnityResponse hasUser(@PathVariable("username") String username) {
        var user = userRepository.findUserByUsername(username);
        var res = new HashMap<String, Boolean>();
        res.put("hasUser", user != null);

        return UnityResponse.builder()
            .data(res)
            .build();
    }
}
