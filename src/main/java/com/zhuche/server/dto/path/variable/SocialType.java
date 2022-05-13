package com.zhuche.server.dto.path.variable;

public enum SocialType {
    ALIPAY{
        public String toString() {
            return "alipay";
        }
    },
    TT {
        public String toString() {
            return "tt";
        }
    },
    WECHAT{
        public String toString() {
            return "wechat";
        }
    };
}
