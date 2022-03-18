package com.zhuche.server.services;

import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.StoreRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class MiniProgramStoreService {
    private final StoreRepository storeRepository;

    public List<Store> getStores(String keyword) {
        // dynamic query
        Specification<Store> sf = (root, query, builder) -> {
            final var newKeyword = "%" + keyword + "%";
            List<Predicate> maps = new ArrayList<>();
            maps.add(builder.like(root.get("address").as(String.class), newKeyword));
            maps.add(builder.like(root.get("name").as(String.class), newKeyword));
            maps.add(builder.like(root.get("city").get("name").as(String.class), newKeyword));
            maps.add(builder.like(root.get("area").get("name").as(String.class), newKeyword));

            Predicate[] pre = new Predicate[maps.size()];
            Predicate or = builder.or(maps.toArray(pre));
            query.where(or);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };

        return storeRepository.findAll(sf);
    }

}
