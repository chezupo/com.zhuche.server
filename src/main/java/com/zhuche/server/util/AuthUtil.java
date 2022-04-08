package com.zhuche.server.util;

import com.zhuche.server.model.Role;
import com.zhuche.server.model.User;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class AuthUtil {
    private final JWTUtil jwtUtil;

    public Boolean isAdmin() {
        final var myRoles = jwtUtil.getUser().getRoles();

        return myRoles.contains(Role.ROLE_ADMIN);
    }

    public User getMe() {
        return jwtUtil.getUser();
    }
}
