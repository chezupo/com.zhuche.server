package com.zhuche.server;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.Instant;
import java.time.ZonedDateTime;

@SpringBootTest
class ApplicationTests {


    @Test
    void tmp() {
        var dateTime = ZonedDateTime.now();
//        2018-06-08T10:34:56+08:00
        final String result = String.format("%s-%s-%sT%s:%s:%s+08:00",
            dateTime.getYear(),
            dateTime.getMonthValue(),
            dateTime.getDayOfMonth(),
            dateTime.getHour(),
            dateTime.getMonthValue(),
            dateTime.getSecond()
            );
        System.out.println(result);

    }

}
