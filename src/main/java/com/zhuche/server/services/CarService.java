/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/28
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.CarMapper;
import com.zhuche.server.dto.request.car.CreateCarRequest;
import com.zhuche.server.dto.request.car.UpdateCarRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Car;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.BrandSeriesRepository;
import com.zhuche.server.repositories.CarRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class CarService {
    private final JWTUtil jwtUtil;
    private final CarMapper carMapper;
    private final CarRepository carRepository;
    private final BrandSeriesRepository brandSeriesRepository;

    public Car createCar(@Valid CreateCarRequest request)  {
        final var meyStore = jwtUtil.getUser().getStore();
        Car newCar = carMapper.createCarRequestToCar(request);
        newCar.setCreatedAt(LocalDateTime.now());
        newCar.setStore(meyStore);
        newCar.setUpdatedAt(LocalDateTime.now());

        return carRepository.save(newCar);
    }

    public PageFormat fetchPageCars(Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;

        Pageable pagingSort = PageRequest.of(page, size);
        Specification<Store> sf = (root, query, builder) -> {
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
        final var pageData = carRepository.findAll(sf, pagingSort);

        return PageFormat.builder()
            .size(pageData.getSize())
            .total(pageData.getTotalElements())
            .list(pageData.getContent())
            .currentPage(page + 1)
            .build();

    }

    public Car update(Long id, UpdateCarRequest request) {
        final var meyStore = jwtUtil.getUser().getStore();
        Car newCar = carMapper.updateCarRequestToCar(request);
        newCar.setCreatedAt(LocalDateTime.now());
        newCar.setStore(meyStore);
        newCar.setId(id);
        newCar.setUpdatedAt(LocalDateTime.now());

        return carRepository.save(newCar);
    }

    public void destroy(Long id) {
        carRepository.deleteById(id);
    }
}
