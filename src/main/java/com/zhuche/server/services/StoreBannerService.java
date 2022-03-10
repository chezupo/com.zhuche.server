package com.zhuche.server.services;

import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.StoreBannerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class StoreBannerService {
    final private StoreBannerRepository storeBannerRepository;

    public PageFormat getStoreBanners(Integer page, Integer size, Long id) {
        page = page != null ? --page : 0;
        size = size != null ? size : 12;
        Pageable pagingSort = PageRequest.of(page, size);
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            if (null != id) {
                Predicate provinceMap = builder.equal(root.get("store").get("id").as(Long.class), id);
                maps.add(provinceMap);
            }
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };
        final var pageData = storeBannerRepository.findAll(sf,pagingSort);

        return PageFormat
            .builder()
            .list(pageData.stream().toList())
            .total(pageData.getTotalElements())
            .currentPage(page + 1)
            .size(size)
            .build();
    }
}
