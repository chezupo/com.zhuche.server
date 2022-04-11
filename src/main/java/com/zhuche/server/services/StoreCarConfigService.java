/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/27
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.request.store.car.config.CreateStoreCarConfigRequest;
import com.zhuche.server.dto.request.store.car.config.UpdateStoreCarConfigRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.model.StoreCarConfig;
import com.zhuche.server.repositories.StoreCarConfigRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
@AllArgsConstructor
public class StoreCarConfigService {
    private final StoreCarConfigRepository storeCarConfigRepository;
    private final JWTUtil jwtUtil;

    public PageFormat getStoreConfigs(Integer page, Integer size) {
        final boolean isFetchAll = page == null && size == null;
        page = page == null ? 0 : --page;
        size = size == null ? 10 :  size;
        Pageable pagingSort = PageRequest.of(page, size);

        Specification<Store> sf = (root, query,builder) -> {
            List<Predicate> maps = new ArrayList<>();
            final var me = jwtUtil.getUser();
            // 不是管理员
            if (!me.getRoles().contains(Role.ROLE_ADMIN)) {
                Predicate  storeAdminMap = builder.equal(root.get("store").get("admin").get("id").as(Long.class), me.getId());
                maps.add(storeAdminMap);
            }

            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };
        if (isFetchAll) {
            final List<StoreCarConfig> pageDate = storeCarConfigRepository.findAll(sf);

            return PageFormat.builder()
                .list(pageDate)
                .total((long) pageDate.size())
                .currentPage(page + 1)
                .size(size)
                .build();
        } else {
            final Page<StoreCarConfig> pageDate = storeCarConfigRepository.findAll(sf, pagingSort);

            return PageFormat.builder()
                .list(pageDate.getContent())
                .total(pageDate.getTotalElements())
                .currentPage(page + 1)
                .size(size)
                .build();
        }
    }

    public StoreCarConfig createStoreCarConfig(CreateStoreCarConfigRequest request) {
        final var store = jwtUtil.getUser().getStore();
        return storeCarConfigRepository.save(
            StoreCarConfig.builder()
                .name(request.getName())
                .store(store)
                .build()
        );
    }

    public StoreCarConfig updateStoreConfigs(Integer id, UpdateStoreCarConfigRequest request) {
        final var storeCarConfig = storeCarConfigRepository.findById(id.longValue()).get();
        storeCarConfig.setName(request.getName());
        return storeCarConfigRepository.save(storeCarConfig);
    }

    public void destoryStoreConfig(Integer id) {
        storeCarConfigRepository.deleteById(id.longValue());
    }

    public List<StoreCarConfig> getStoreConfigsByStoreId(Long id) {
        Specification<Store> sf = (root, query,builder) -> {
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

        return storeCarConfigRepository.findAll(sf);
    }
}
