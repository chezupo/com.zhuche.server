package com.zhuche.server.services;

import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Coupon;
import com.zhuche.server.model.Store;
import com.zhuche.server.model.User;
import com.zhuche.server.model.UserCoupon;
import com.zhuche.server.repositories.CouponRepository;
import com.zhuche.server.repositories.HolidayRepository;
import com.zhuche.server.repositories.UserCouponRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.CouponUtil;
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
import java.util.Calendar;
import java.util.List;

@Service
@AllArgsConstructor
public class UserCouponService {
    private final CouponRepository couponRepository;
    private final UserRepository userRepository;
    private final UserCouponRepository userCouponRepository;
    private final CouponUtil couponUtil;

    public List<? extends UserCoupon> createUserCoupon(Long userId, List<Long> couponIds) {
        final var couponList = couponRepository.findAllById(couponIds);
        final var user = userRepository.findById(userId).get();
        final var newUserCoupons = couponList.stream().map(coupon ->
            userAndCouponMapUserCoupon(user, coupon)
        ).toList();

        return userCouponRepository.saveAll(newUserCoupons);
    }

    public List<UserCoupon> getUserCouponsByUserid(Long userId) {
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            maps.add( builder.equal(root.get("user").get("id").as(Long.class), userId));
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };

        return covertInvalidReason( userCouponRepository.findAll(sf).stream().toList() );
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
        final var userCoupons = covertInvalidReason(pageData.stream().toList());
        return PageFormat.builder()
            .total(pageData.getTotalElements() )
            .list(userCoupons)
            .currentPage(page + 1)
            .size(size)
            .build();
    }

    /**
     * 为用户添加新用户自动赠送优惠卷
     * @param newUser
     */
    public void takeCouponToNewUser(User newUser) {
        final var coupons = couponRepository.findAllByIsAutoDispatchingToNewUser();
        final var userCoupons = coupons.stream().map( coupon ->
            userAndCouponMapUserCoupon(newUser, coupon)
        ).toList();

        userCouponRepository.saveAll(userCoupons);
    }

    private UserCoupon userAndCouponMapUserCoupon(User user, Coupon coupon) {
        return UserCoupon.builder()
            .user(user)
            .expired(coupon.getExpired().longValue())
            .coupon(coupon)
            .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
            .title(coupon.getTitle())
            .content(coupon.getContent())
            .amount(coupon.getAmount())
            .meetAmount(coupon.getMeetAmount())
            .isWithHoliday(coupon.getIsWithHoliday())
            .isWithRent(coupon.getIsWithRent())
            .isWithServiceAmount(coupon.getIsWithServiceAmount())
            .build();
    }

    /**
     * 转化优惠卷不可能用的原因说明
     * @param userCoupons
     * @return
     */
    public List<UserCoupon> covertInvalidReason(List<UserCoupon> userCoupons) {
        return userCoupons.stream().map(userCoupon -> {
            if (userCoupon.getExpired() == null) {
                userCoupon.setIsValid(false);
                return userCoupon;
            }
            final var err = couponUtil.getErrorReason(userCoupon);
            if (err.length() != 0) {
                userCoupon.setIsValid(false);
                userCoupon.setReason(err);
            } else {
                userCoupon.setIsValid(true);
            }

            return userCoupon;
            }).toList();
    }
}
