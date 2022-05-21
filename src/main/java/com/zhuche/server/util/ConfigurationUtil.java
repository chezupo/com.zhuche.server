package com.zhuche.server.util;

import com.zhuche.server.services.ConfigurationService;

public class ConfigurationUtil {
    public static String  fullUrl(String url) {
        if (url == null) {
            return "";
        }
        if (url.length() == 0 ) {
            return "" ;
        }
        var prefix =ConfigurationService.getPrefixUrl() + "/";
        var res = url.replace(prefix, "");

        return prefix + res;
    }

    public static String  fullUrlConvertKey(String url) {
        if (url == null) {
            return "";
        }
        if (url.length() == 0 ) {
            return "" ;
        }
        var prefix = ConfigurationService.getPrefixUrl() + "/";
        var res = url.replace(prefix, "");

        return res;
    }
}
