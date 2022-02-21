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
import com.zhuche.server.model.MiniProgramUser;
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
        final var miniProgramUser = me.getMiniProgramUser();
        miniProgramUser.setAlipayAvatar(request.getAvatar());
        miniProgramUser.setAlipayCity(request.getCity());
        miniProgramUser.setAlipayGender(request.getGender());
        miniProgramUser.setAlipayCode(request.getCode());
        miniProgramUser.setAlipayNickName(request.getNickName());
        miniProgramUser.setAlipayCountryCode(request.getCountryCode());
        miniProgramUser.setAlipayProvince(request.getProvince());
        userRepository.save(me);

        return getAlipayResponse(miniProgramUser);
    }

    public MeResponse getAlipayMe() {
        final var me = authContext.getMe();
        final var miniProgramUser = me.getMiniProgramUser();

        return getAlipayResponse(miniProgramUser);
    }

    private MeResponse getAlipayResponse(MiniProgramUser miniProgramUser) {
        return MeResponse.builder()
            .id(miniProgramUser.getUser().getId())
            .avatar(miniProgramUser.getAlipayAvatar())
            .nickName(miniProgramUser.getAlipayNickName())
            .city(miniProgramUser.getAlipayCity())
            .code(miniProgramUser.getAlipayCode())
            .countryCode(miniProgramUser.getAlipayCountryCode())
            .gender(miniProgramUser.getAlipayGender())
            .province(miniProgramUser.getAlipayProvince())
            .isNewUser(miniProgramUser.getAlipayNickName() == null)
            .phone(miniProgramUser.getAlipayPhone())
            .build();
    }
}
