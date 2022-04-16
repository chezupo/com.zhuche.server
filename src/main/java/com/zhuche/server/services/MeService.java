/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.contexts.AuthContext;
import com.zhuche.server.dto.request.me.UpdateMeRequest;
import com.zhuche.server.dto.response.me.MeResponse;
import com.zhuche.server.model.AlipayAccount;
import com.zhuche.server.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MeService {
    @Autowired
    private AuthContext authContext;

    @Autowired
    private UserRepository userRepository;

    public MeResponse updateAlipayMe(UpdateMeRequest request) {
        final var me = authContext.getMe();
        final var alipayAccount = me.getAlipayAccount();
        alipayAccount.setAvatar(request.getAvatar());
        alipayAccount.setCity(request.getCity());
        alipayAccount.setGender(request.getGender());
        alipayAccount.setCode(request.getCode());
        alipayAccount.setNickName(request.getNickName());
        alipayAccount.setCountryCode(request.getCountryCode());
        alipayAccount.setProvince(request.getProvince());
        userRepository.save(me);

        return getAlipayResponse(alipayAccount);
    }

    public MeResponse getAlipayMe() {
        final var me = authContext.getMe();
        final var miniProgramUser = me.getAlipayAccount();

        return getAlipayResponse(miniProgramUser);
    }

    private MeResponse getAlipayResponse(AlipayAccount miniProgramUser) {
        return MeResponse.builder()
            .id(miniProgramUser.getUser().getId())
            .avatar(miniProgramUser.getAvatar())
            .nickName(miniProgramUser.getNickName())
            .city(miniProgramUser.getCity())
            .code(miniProgramUser.getCode())
            .countryCode(miniProgramUser.getCountryCode())
            .gender(miniProgramUser.getGender())
            .province(miniProgramUser.getProvince())
            .isNewUser(miniProgramUser.getNickName() == null)
            .phone(miniProgramUser.getPhone())
            .build();
    }
}
