/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/20
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipaySystemOauthTokenRequest;
import com.alipay.api.response.AlipaySystemOauthTokenResponse;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.authorizatioins.CreateSocialAuthorizationTokenRequest;
import com.zhuche.server.dto.response.social.authorization.CreateAuthorizationTokenResponse;
import com.zhuche.server.model.MiniProgramUser;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.MiniProgramRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class SocialAuthorizationService {

    @Autowired
    private AlipayClient alipayClient;

    @Autowired
    private MiniProgramRepository miniProgramRepository;

    @Autowired
    private JWTUtil jwtUtil;

    @Autowired
    private UserRepository userRepository;

    public CreateAuthorizationTokenResponse alipayAuthorize(CreateSocialAuthorizationTokenRequest request) throws AlipayApiException {
        AlipaySystemOauthTokenRequest alipayRequest = new AlipaySystemOauthTokenRequest();
        alipayRequest.setGrantType("authorization_code");
        alipayRequest.setCode(request.getAuthorizationCode());
        AlipaySystemOauthTokenResponse response = alipayClient.execute(alipayRequest);
        log.info("{}", response);
        var miniProgramUser = miniProgramRepository.findByAlipayUserid(response.getUserId());
        if (miniProgramUser == null) {
            miniProgramUser = MiniProgramUser.builder()
                .alipayAccessToken(response.getAccessToken())
                .alipayExpiresIn(response.getExpiresIn())
                .alipayReExpiresIn(response.getReExpiresIn())
                .alipayUserId(response.getUserId())
                .alipayRefreshToken(response.getRefreshToken())
                .build();
            var newUser = User.builder()
                .roles(List.of(Role.ROLE_USER))
                .miniProgramUser(miniProgramUser)
                .build();
            newUser.setIsEnabled(true);
            userRepository.save(newUser);
        }

        final var res = jwtUtil.generateToken(miniProgramUser.getUser(), SocialType.ALIPAY);
        return CreateAuthorizationTokenResponse.builder()
            .accessToken(res.getAccessToken())
            .roles(miniProgramUser.getUser().getRoles())
            .expiration(res.getExpiration())
            .tokenType(res.getTokenType())
            .isNewUser(miniProgramUser.getAlipayNickName() == null)
            .build();
    }
}
