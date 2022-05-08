package com.zhuche.server.services;

import com.zhuche.server.dto.response.dashboard.WeekUserAndOrderItem;
import com.zhuche.server.model.Log;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.LogRepository;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.PaginationUtil;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.*;

@Service
@Slf4j
@AllArgsConstructor
public class DashboardService {
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final LogRepository logRepository;
    private final PaginationUtil paginationUtil;

    private Long getTodayTimeStamp() {
        var now = LocalDateTime.now();
        String startDateStr = String.format("%d-%d-%d %d:%d:%d",
            now.getYear(),
            now.getMonth().getValue(),
            now.getDayOfMonth(),
            0,
            0,
            0
        );

        return java.sql.Timestamp.valueOf( startDateStr).toInstant().toEpochMilli();
    }

    public Long getTodayOrderCount() {
        Long startTimeStamp  = getTodayTimeStamp();
        Long endTimeStamp  = startTimeStamp + 60 * 60 * 24 * 1000 -1;

        return orderRepository.getOrderCountBetweenTimeStamp(startTimeStamp, endTimeStamp);
    }

    /**
     * 获取用户总量
     * @return
     */
    public Long getUserCount() {
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            maps.add(builder.isNotNull(root.get("alipayAccount")));
            Predicate[] pre = new Predicate[maps.size()];
            Predicate or = builder.or(maps.toArray(pre));
            query.where(or);
            List<Order> orders = new ArrayList<>();

            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };
        return userRepository.count(sf);
    }

    /**
     * 获取今日交易额度
     * @return
     */
    public Double getTodayAmount() {
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            maps.add(builder.between(root.get("createdAt").as(Long.class),
                getTodayTimeStamp(),
                getTodayTimeStamp() + 60 * 60 * 24 * 1000 - 1
            ));
            Predicate[] pre = new Predicate[maps.size()];
            Predicate or = builder.or(maps.toArray(pre));
            query.where(or);
            List<Order> orders = new ArrayList<>();

            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };
       double amount = 0;

       final List<com.zhuche.server.model.Order> orders =  orderRepository.findAll(sf);
       for (com.zhuche.server.model.Order order : orders) {
           amount = add(amount, order.getAmount());
           amount = add(amount, order.getDeposit());
       }

       return amount;
    }

    public Double add(Double value1, Double value2) {
        BigDecimal b1 = new BigDecimal(Double.toString(value1));
        BigDecimal b2 = new BigDecimal(Double.toString(value2));
        return b1.add(b2).doubleValue();
    }

    /**
     *
     * @return
     */
    public List<WeekUserAndOrderItem> getWeekUserAndOrderItems() {
        final List<WeekUserAndOrderItem> res = new ArrayList();
        final var numMapWeekDay = new HashMap<Integer, String>();
        numMapWeekDay.put(1, "周日");
        numMapWeekDay.put(2, "周一");
        numMapWeekDay.put(3, "周二");
        numMapWeekDay.put(4, "周三");
        numMapWeekDay.put(5, "周四");
        numMapWeekDay.put(6, "周五");
        numMapWeekDay.put(7, "周六");
        for(Long day = 0L; day < 7; day++) {
            final Long dayTimeStamp = 60 * 60 * 24 * 1000L;
            Long startTimeStamp = getTodayTimeStamp() -  dayTimeStamp * day;
            Long endTimeStamp = startTimeStamp + dayTimeStamp - 1;
            final Long userCount = userRepository.getCountBetweenTimestamp(startTimeStamp, endTimeStamp);
            final Long orderCount = orderRepository.getOrderCountBetweenTimeStamp(startTimeStamp, endTimeStamp);
            final var date = new Date(startTimeStamp);
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);
            int dayOfWeekNum = cal.get(Calendar.DAY_OF_WEEK);
            final var weekDay = numMapWeekDay.get(dayOfWeekNum);
            var dayOfMonth = cal.get(Calendar.DAY_OF_MONTH);
            res.add(
                    WeekUserAndOrderItem.builder()
                    .userCount(userCount)
                    .orderCount(orderCount)
                    .name(
                        String.format(
                            "%s(%s)",
                            dayOfMonth > 9 ? dayOfMonth : "0" + dayOfMonth,
                            weekDay
                        )
                    )
                    .build()
            );
        }
        Collections.reverse(res);

        return res;
    }

    public List<Log> getLogs() {
        var page = 0;
        var size = 10;
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        final var pageData = logRepository.findAll(pagingSort);

        return pageData.stream().toList();
    }
}
