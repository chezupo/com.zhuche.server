/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/22
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.BrandMapper;
import com.zhuche.server.dto.request.brand.CreateBrandRequest;
import com.zhuche.server.dto.request.brand.UpdateBrandRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Brand;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.BrandRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class BrandService {
    private final BrandRepository brandRepository;
    private final JWTUtil jwtUtil;
    private final BrandMapper brandMapper;

    public Brand createBrand(CreateBrandRequest requestBody) {
        final var store = jwtUtil.getUser().getStore();
        final var newBrand = Brand.builder()
            .name(requestBody.getName())
            .store(store)
            .imgKey(requestBody.getImgKey())
            .build();

        return brandRepository.save(newBrand);
    }

    public PageFormat getBrands(Integer page, Integer size, String name, String storeName) {
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
            if (name != null && name.length() > 0) {
                maps.add( builder.like(root.get("name"), "%" + name + "%") );
            }
            if (storeName != null && storeName.length() > 0) {
                maps.add( builder.like(root.get("store").get("name"), "%" + storeName + "%") );
            }

            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };

        final var pageData = brandRepository.findAll(sf, pagingSort);
        return PageFormat.builder()
            .size(pageData.getSize())
            .total(pageData.getTotalElements())
            .list(pageData.getContent())
            .currentPage(page + 1)
            .build();
    }

    public Brand updateBrand(Integer id, UpdateBrandRequest request) {
        final var brand = brandRepository.findById(Long.valueOf(id)).get();
        brand.setName(request.getName());
        brand.setImgKey(request.getImgKey());

        return brandRepository.save(brand);
    }
}
