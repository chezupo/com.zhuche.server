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
import com.zhuche.server.dto.mapper.WechatMapper;
import com.zhuche.server.dto.request.me.UpdateMeRequest;
import com.zhuche.server.dto.request.me.UpdateMyPhoneNumberRequest;
import com.zhuche.server.dto.request.me.UploadLicenseRequest;
import com.zhuche.server.dto.response.me.MeResponse;
import com.zhuche.server.dto.response.me.promotion.PromotionInfoResponse;
import com.zhuche.server.model.Order;
import com.zhuche.server.model.User;
import com.zhuche.server.model.WechatAccount;
import com.zhuche.server.repositories.AlipayAccountRepository;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.AlipayUtil;
import com.zhuche.server.util.JWTUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class MeService {
    @Autowired private AuthContext authContext;
    @Autowired private JWTUtil jwtUtil;
    @Autowired private UserRepository userRepository;
    @Autowired private AlipayMapper alipayMapper;
    @Autowired private WechatMapper wechatMapper;
    @Autowired private AlipayUtil alipayUtil;
    @Autowired private AlipayAccountRepository alipayAccountRepository;
    @Autowired private AlipayClient alipayClient;
    @Autowired private OrderRepository orderRepository;

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
        if (me.getAlipayQr() != null) {
            return me.getAlipayQr();
        }

        AlipayOpenAppQrcodeCreateRequest request = new AlipayOpenAppQrcodeCreateRequest();
        request.setBizContent("{" +
            "\"url_param\":\"/pages/index/index?userId=" + me.getId() + "\"," +
            "\"query_param\":\"userId="+ me.getId() +"\"," +
            "\"describe\":\"我的推广二维码\"" +
            "}");
        AlipayOpenAppQrcodeCreateResponse response = alipayClient.certificateExecute(request);
        if(response.isSuccess()){
            me.setAlipayQr(response.getQrCodeUrl());
            userRepository.save(me);
            return me.getAlipayQr();
        } else {
            System.out.println("调用失败");
        }
        return "{";
    }

    public PromotionInfoResponse getPromotionInfo() {
        final User me = jwtUtil.getUser();
        List<Long> ids = new java.util.ArrayList<Long>(List.of(me.getId()));
        List<User> promotionLevel1Users  = userRepository.findPromotionUsers(ids);
        ids.clear();
        for(User user : promotionLevel1Users) {
            ids.add(user.getId());
        }
        long userCount =  ids.size() > 0 ? userRepository.countPromotionUser(ids) : 0;
        userCount += ids.size();
       final var result = PromotionInfoResponse.builder()
            .downLineCount(userCount)
            .build();
      List<User> promotionLevel2Users = userRepository.findPromotionUsers(ids);
      promotionLevel2Users.forEach(user -> ids.add(user.getId()));
        // 获取前3的订单
        List<Order> orders = orderRepository.findByPromotionUserId(me.getId());
        result.setOrders(orders);
        // 一级下线
        result.setPromotionLevel1Users(promotionLevel1Users);
        // 二级下线
        result.setPromotionLevel2Users(promotionLevel2Users);

       return result;
    }

    public MeResponse updateLicense(UploadLicenseRequest request) {
        var me = jwtUtil.getUser();
        if (request.getIdCarFrontal() != null) {
            me.setIdCarFrontal(request.getIdCarFrontal());
        }
        if (request.getIdCarBack() != null) {
            me.setIdCarBack(request.getIdCarBack());
        }
        if (request.getDriverLicense() != null) {
            me.setDriverLicense(request.getDriverLicense());
        }
        userRepository.save(me);

        return alipayMapper.AlipayAccountToMeResponse(me.getAlipayAccount());
    }

    public MeResponse getWechatMe() {
        final User me = authContext.getMe();
        WechatAccount wechatAccount =me.getWechatAccount();

        return wechatMapper.wechatAccountToMeResponse(wechatAccount);
    }

    public MeResponse updateWechatMe(UpdateMeRequest request) {
        final var me = authContext.getMe();
        WechatAccount wechatAccount = me.getWechatAccount();
        wechatAccount.setAvatar(request.getAvatar());
        wechatAccount.setCity(request.getCity());
        wechatAccount.setGender(request.getGender());
        wechatAccount.setCode(request.getCode());
        wechatAccount.setNickName(request.getNickName());
        wechatAccount.setCountryCode(request.getCountryCode());
        wechatAccount.setProvince(request.getProvince());
        wechatAccount.setIsAuthorizeBaseInfo(true);
        userRepository.save(me);

        return wechatMapper.wechatAccountToMeResponse(wechatAccount);
    }
}
