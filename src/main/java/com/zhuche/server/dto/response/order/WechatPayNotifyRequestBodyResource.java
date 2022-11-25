package com.zhuche.server.dto.response.order;

import lombok.Data;

@Data
public class WechatPayNotifyRequestBodyResource {
    public String original_type;
    public String algorithm;
    public String ciphertext;
    public String associated_data;
    public String nonce;
}
