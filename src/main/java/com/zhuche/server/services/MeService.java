/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.contexts.AuthContext;
import com.zhuche.server.dto.mapper.MeMapper;
import com.zhuche.server.dto.request.me.UpdateMeRequest;
import com.zhuche.server.dto.response.me.MeResponse;
import com.zhuche.server.model.AlipayAccount;
import com.zhuche.server.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MeService {
    @Autowired private AuthContext authContext;
    @Autowired private UserRepository userRepository;
    @Autowired private MeMapper meMapper;

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
        alipayAccount.setIsAuthorizeBaseInfo(true);
        userRepository.save(me);

        return meMapper.AlipayAccountToMeResponse(alipayAccount);
    }

    public MeResponse getAlipayMe() {
        final var me = authContext.getMe();

        return meMapper.AlipayAccountToMeResponse(me.getAlipayAccount());
    }
}
