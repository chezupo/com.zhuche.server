package com.zhuche.server.services;

import com.zhuche.server.dto.request.car.category.CreateCategoryRequest;
import com.zhuche.server.dto.request.car.category.UpdateCategoryRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.CarCategory;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.CarCategoryRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
public class CarCategoryService {
    private final CarCategoryRepository carCategoryRepository;
    private final JWTUtil jwtUtil;

    public CarCategory create(CreateCategoryRequest request) {
        final Store store = jwtUtil.getUser().getStore();
        return carCategoryRepository.save(
            CarCategory.builder()
                .name(request.getName())
                .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                .store(store)
                .build()
        );
    }

    public PageFormat fetchPageData(Integer page, Integer size) {
        final var isShowAll = page == null && size == null ;
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Pageable pagingSort = PageRequest.of(page, size);
        Specification<CarCategory> sf = (root, query, builder) -> {
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

        if (isShowAll) {
            final var pageData = carCategoryRepository.findAll(sf);
            return PageFormat.builder()
                .size(pageData.size())
                .total((long) pageData.size())
                .list(pageData)
                .currentPage(page + 1)
                .build();
        } else {
            final var pageData = carCategoryRepository.findAll(sf, pagingSort);
            return PageFormat.builder()
                .size(pageData.getSize())
                .total(pageData.getTotalElements())
                .list(pageData.getContent())
                .currentPage(page + 1)
                .build();
        }
    }

    public CarCategory update(Long id, UpdateCategoryRequest request) {
        final var value = carCategoryRepository.findById(id).get();
        value.setName(request.getName());
        carCategoryRepository.save(value);

        return null;
    }

    public void destroyById(Long id) {
        carCategoryRepository.deleteById(id);
    }
}
