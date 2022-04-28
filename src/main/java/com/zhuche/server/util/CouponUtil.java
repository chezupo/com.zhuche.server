package com.zhuche.server.util;

import com.zhuche.server.model.UserCoupon;
import com.zhuche.server.repositories.HolidayRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;
import java.util.Calendar;

@Component
@AllArgsConstructor
public class CouponUtil {
    private final HolidayRepository holidayRepository;

    /**
     * 获取用户优惠卷失效的原因
     * @param userCoupon
     * @return
     */
    public String getErrorReason(UserCoupon userCoupon) {
        Calendar today = Calendar.getInstance();
        today.set(Calendar.HOUR_OF_DAY, 0);
        today.set(Calendar.SECOND, 0);
        today.set(Calendar.MINUTE, 0);
        today.set(Calendar.MILLISECOND, 0);
        var nowTimeStamp = today.getTimeInMillis();
        final var isHoliday =  holidayRepository.findByDay(nowTimeStamp) != null;

        final var expiredTimestamp = userCoupon.getExpired() * 60 * 60 * 24 * 1000 + Timestamp.valueOf(userCoupon.getCreatedAt()).toInstant().toEpochMilli();
        boolean valid = expiredTimestamp > nowTimeStamp;
        if (!valid) {
            return "已过期";
        }
        if (!userCoupon.getCoupon().getIsWithHoliday() && isHoliday) {
            return "节假日不可用";
        }

        return "";
    }
}
