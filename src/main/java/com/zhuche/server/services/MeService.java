/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayOpenAppQrcodeCreateRequest;
import com.alipay.api.response.AlipayOpenAppQrcodeCreateResponse;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zhuche.server.contexts.AuthContext;
import com.zhuche.server.dto.mapper.AlipayMapper;
import com.zhuche.server.dto.request.me.UpdateMeRequest;
import com.zhuche.server.dto.request.me.UpdateMyPhoneNumberRequest;
import com.zhuche.server.dto.response.me.MeResponse;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.AlipayAccountRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.AlipayUtil;
import com.zhuche.server.util.JWTUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class MeService {
    @Autowired private AuthContext authContext;
    @Autowired private JWTUtil jwtUtil;
    @Autowired private UserRepository userRepository;
    @Autowired private AlipayMapper alipayMapper;
    @Autowired private AlipayUtil alipayUtil;
    @Autowired private AlipayAccountRepository alipayAccountRepository;
    @Autowired private AlipayClient alipayClient;

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

        return alipayMapper.AlipayAccountToMeResponse(alipayAccount);
    }

    public MeResponse getAlipayMe() {
        final var me = authContext.getMe();

        return alipayMapper.AlipayAccountToMeResponse(me.getAlipayAccount());
    }

    /**
     * 更新支付宝手机号
     * @param request
     * @return
     */
    public MeResponse updateAlipayPhoneNumber(UpdateMyPhoneNumberRequest request) throws Exception {
        final String phone = alipayUtil.decryptContentPhoneNumber(new ObjectMapper().writer().withDefaultPrettyPrinter().writeValueAsString(request));
        final var alipayAccount = jwtUtil.getUser().getAlipayAccount();
        alipayAccount.setPhone(phone);

        return alipayMapper.AlipayAccountToMeResponse(alipayAccountRepository.save(alipayAccount));
    }

    public String getMyQR() throws AlipayApiException {
        final User me = jwtUtil.getUser();
        AlipayOpenAppQrcodeCreateRequest request = new AlipayOpenAppQrcodeCreateRequest();
        request.setBizContent("{" +
            "\"url_param\":\"/pages/index/index?name=ali&loc=hz\"," +
            "\"query_param\":\"userId="+ me.getId() +"\"," +
            "\"describe\":\"我的推广二维码\"" +
            "}");
        AlipayOpenAppQrcodeCreateResponse response = alipayClient.certificateExecute(request);
        if(response.isSuccess()){
            return response.getQrCodeUrl();
        } else {
            System.out.println("调用失败");
        }
        return "{";
    }
}
