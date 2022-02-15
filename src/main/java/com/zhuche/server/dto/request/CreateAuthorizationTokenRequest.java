/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.dto.request;

import com.zhuche.server.validators.authorize.AuthorizeValidator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;

@Data
@AuthorizeValidator( username = "username", password = "password" )
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CreateAuthorizationTokenRequest {
    @NotBlank
    private String username;

    @NotBlank
    private String password;
}
