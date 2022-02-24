/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.dto.response.authorization;

import com.zhuche.server.model.Role;
import lombok.Data;
import lombok.experimental.SuperBuilder;

import java.util.Collection;

@Data
@SuperBuilder
public class CreateAuthorizationTokenResponse {
    private String accessToken;

    private Integer expiration;

    private String tokenType;

    private Collection<Role> roles;
}
