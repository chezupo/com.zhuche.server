package com.zhuche.server.services;

import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Comment;
import com.zhuche.server.model.Store;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.CommentRepository;
import com.zhuche.server.util.AuthUtil;
import com.zhuche.server.util.JWTUtil;
import com.zhuche.server.util.PaginationUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
    private final AuthUtil authUtil;
    private final JWTUtil jwtUtil;
    private final PaginationUtil paginationUtil;

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

    public PageFormat getCommentsByStoreId(Long storeId, Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            maps.add( builder.equal(root.get("store").get("id").as(Long.class), storeId) );
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));
            return query.orderBy(orders).getRestriction();
        };
        final Page pageData = commentRepository.findAll(sf, pagingSort);

        return paginationUtil.covertPageFormat(pageData);
    }

    /**
     * 获取自己门店的评论
     * @param page
     * @param size
     * @return
     */
    public PageFormat getMyStoreComments(Integer page, Integer size) {
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            if (!authUtil.isAdmin()) {
                final User me = jwtUtil.getUser();
                maps.add( builder.equal(root.get("store").get("id").as(Long.class), me.getStore().getId()) );
            }
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));
            return query.orderBy(orders).getRestriction();
        };

        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        final var pageData = commentRepository.findAll(sf, pagingSort);

        return paginationUtil.covertPageFormat(pageData);
    }
}
