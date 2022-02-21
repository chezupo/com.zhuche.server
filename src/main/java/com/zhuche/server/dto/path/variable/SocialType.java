package com.zhuche.server.dto.path.variable;

public enum SocialType {
    ALIPAY{
        public String toString() {
            return "alipay";
        }
    },
    WECHAT{
        public String toString() {
            return "wechat";
        }
    };
}
