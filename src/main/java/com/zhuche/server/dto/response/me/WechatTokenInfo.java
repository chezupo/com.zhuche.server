package com.zhuche.server.dto.response.me;

import lombok.Data;

@Data
public class WechatTokenInfo {
    String access_token;
    int expires_in;
}
