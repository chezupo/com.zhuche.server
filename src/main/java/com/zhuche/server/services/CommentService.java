package com.zhuche.server.services;

import com.zhuche.server.model.Comment;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.CommentRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class CommentService {
    private final CommentRepository commentRepository;

    public List getCarsCommentsById(Long id) {
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            maps.add( builder.equal(root.get("car").get("id").as(Long.class), id) );
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));
            return query.orderBy(orders).getRestriction();
        };

        return commentRepository.findAll(sf);
    }

    public List<Comment> getCommentsByStoreId(Long storeId) {
        return commentRepository.findAllByStoreId(storeId);
    }
}
