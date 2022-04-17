package com.zhuche.server.services;

import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.model.UserCoupon;
import com.zhuche.server.repositories.CouponRepository;
import com.zhuche.server.repositories.UserCouponRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.PaginationUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class UserCouponService {
    private final CouponRepository couponRepository;
    private final UserRepository userRepository;
    private final UserCouponRepository userCouponRepository;
    private final PaginationUtil paginationUtil;

    public List<? extends UserCoupon> createUserCoupon(Long userId, List<Long> couponIds) {
        final var couponList = couponRepository.findAllById(couponIds);
        final var user = userRepository.findById(userId).get();
        final var newUserCoupons = couponList.stream().map(coupon ->
            UserCoupon.builder()
                .coupon(coupon)
                .user(user)
                .createdAt(
                    Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli()
                )
                .expired(coupon.getExpired().longValue())
                .build()
        ).toList();

        return userCouponRepository.saveAll(newUserCoupons);
    }

    public PageFormat getUserCoupons(Integer page, Integer size, Long userId, String title, String nickName) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            if (nickName != null && nickName.length() > 0) {
                maps.add( builder.like(root.get("user").get("alipayAccount").get("nickName"), "%" + nickName + "%") );
            }
            if (userId != null ) {
                maps.add( builder.equal(root.get("user").get("id").as(Long.class), userId) );
            }
            if (title != null && title.length() > 0 ) {
                maps.add( builder.like(root.get("coupon").get("title").as(String.class), "%" + title + "%"));
            }
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };

        final Page<UserCoupon> pageData = userCouponRepository.findAll(sf, pagingSort);
        return PageFormat.builder()
            .total(pageData.getTotalElements() )
            .list(pageData.stream().toList())
            .currentPage(page + 1)
            .size(size)
            .build();
    }
}
