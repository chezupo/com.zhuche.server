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
import com.zhuche.server.model.AlipayAccount;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.AlipayAccountRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

@Service
@Slf4j
public class SocialAuthorizationService {
    @Autowired private AlipayClient alipayClient;
    @Autowired private AlipayAccountRepository alipayAccountRepository;
    @Autowired private JWTUtil jwtUtil;
    @Autowired private UserRepository userRepository;
    @Autowired private UserCouponService userCouponService;

    @Transactional
    public CreateAuthorizationTokenResponse alipayAuthorize(CreateSocialAuthorizationTokenRequest request) throws AlipayApiException {
        AlipaySystemOauthTokenRequest alipayRequest = new AlipaySystemOauthTokenRequest();
        alipayRequest.setGrantType("authorization_code");
        alipayRequest.setCode(request.getAuthorizationCode());
        AlipaySystemOauthTokenResponse response = alipayClient.certificateExecute(alipayRequest);
        log.info("{}", response);
        var alipayAccount = alipayAccountRepository.findByAlipayUserid(response.getUserId());
        if (alipayAccount == null) {
            alipayAccount = AlipayAccount.builder()
                .accessToken(response.getAccessToken())
                .expiresIn(response.getExpiresIn())
                .createdAt( Timestamp.valueOf( LocalDateTime.now() ).toInstant().toEpochMilli() )
                .reExpiresIn(response.getReExpiresIn())
                .userId(response.getUserId())
                .refreshToken(response.getRefreshToken())
                .build();
            var newUser = User.builder()
                .roles(List.of(Role.ROLE_USER))
                .alipayAccount(alipayAccount)
                .build();
            newUser.setIsEnabled(true);
            if ( request.getPid() != null ) {
                User pUser = userRepository.findUserById(request.getPid());
                if (pUser != null) {
                    newUser.setUser(pUser);
                }
            }

            userRepository.save(newUser);
            userCouponService.takeCouponToNewUser(newUser);
            alipayAccount.setUser(newUser);
        }

        final var res = jwtUtil.generateToken(alipayAccount.getUser(), SocialType.ALIPAY);
        return CreateAuthorizationTokenResponse.builder()
            .accessToken(res.getAccessToken())
            .roles(alipayAccount.getUser().getRoles())
            .expiration(res.getExpiration())
            .tokenType(res.getTokenType())
            .isNewUser(alipayAccount.getNickName() == null)
            .build();
    }
}
