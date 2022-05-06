/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/31
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.request.brand.series.CreateSeriesRequest;
import com.zhuche.server.model.BrandSeries;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.BrandRepository;
import com.zhuche.server.repositories.BrandSeriesRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class BrandSeriesService {
    private final BrandSeriesRepository brandSeriesRepository;
    private final BrandRepository brandRepository;
    private final JWTUtil jwtUtil;

    public BrandSeries createBrandSeries(Integer brandId, CreateSeriesRequest request) {
        final var brand = brandRepository.findById(brandId.longValue()).get();
        return brandSeriesRepository.save(
            BrandSeries.builder()
                .name(request.getName())
                .brand(brand)
                .build()
        );
    }

    public BrandSeries updateBrandSeries(Integer id, CreateSeriesRequest request) {
        final var brandSeries = brandSeriesRepository.findById(id.longValue()).get();
        brandSeries.setName(request.getName());

        return brandSeriesRepository.save( brandSeries );
    }

    public void destroy(Integer id) {
        brandSeriesRepository.deleteById(id.longValue());
    }

    public List<BrandSeries> getStoreBrandsByStoreId(Long id) {
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            Predicate  storeAdminMap = builder.equal(root.get("store").get("id").as(Long.class), id);
            maps.add(storeAdminMap);

            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };

        return brandRepository.findAll(sf);
    }

    public Store getMyStore() {
        return jwtUtil.getUser().getStore();
    }
}
