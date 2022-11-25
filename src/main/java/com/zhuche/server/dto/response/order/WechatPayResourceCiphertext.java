package com.zhuche.server.dto.response.order;

import cn.binarywang.wx.miniapp.constant.WxMaApiUrlConstants;

public class WechatPayResourceCiphertext {
    public String mchid; // "1614184221",
    public String appid;
    public String out_trade_no;
    public String transaction_id;
    public String trade_type;
    public String trade_state;
    public String trade_state_desc;
    public String bank_type;
    public String attach;
    public String success_time;
    public WechatPayResourceCiphertextPayer payer;
    public WechatPayResourceCiphertextAmount amount;
}
