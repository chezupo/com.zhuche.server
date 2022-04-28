package com.zhuche.server.util;

import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
public class TradeUtil {
    /**
     * 生成订单号
     * @return
     */
    public static String generateOutTradeNo() {
        final var now = LocalDateTime.now();
        return String.format(
            "%d%d%d%d%d%d%d",
            now.getYear(),
            now.getMonth().getValue(),
            now.getDayOfMonth(),
            now.getHour(),
            now.getMinute(),
            now.getSecond(),
            now.getNano()
        );
    }
}
