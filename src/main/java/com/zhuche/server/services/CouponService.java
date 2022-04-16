package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.CouponMapper;
import com.zhuche.server.dto.request.coupon.CreateCouponRequest;
import com.zhuche.server.dto.request.coupon.UpdateCouponRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Coupon;
import com.zhuche.server.repositories.CouponRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class CouponService {
    private final CouponRepository couponRepository;
    private final CouponMapper couponMapper;

    public Coupon createCoupon(CreateCouponRequest request) {
        return couponRepository.save(couponMapper.createCouponToCoupon(request));
    }

        public PageFormat getCoupons(Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Pageable pagingSort = PageRequest.of(page, size, Sort.by("id").descending());
        final var pageData = couponRepository.findAll(pagingSort);

        return PageFormat.builder()
            .list(pageData.getContent())
            .size(size)
            .total(pageData.getTotalElements())
            .currentPage(pageData.getNumber() + 1)
            .build();
    }

    public Coupon updateCoupon(Long id, UpdateCouponRequest request) {
        final var oldCoupon = couponRepository.findById(id).get();
        final var newCoupon = couponMapper.updateCouponToCoupon(request);
        newCoupon.setId(oldCoupon.getId());

        return couponRepository.save(newCoupon);
    }

    public void deleteCouponById(Long id) {
        couponRepository.deleteById(id);
    }
}
