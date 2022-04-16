package com.zhuche.server.services;

import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.request.user.UpdateUserPasswordRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.AuthUtil;
import com.zhuche.server.util.PasswordEncodeUtil;
import lombok.AllArgsConstructor;
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
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncodeUtil passwordEncodeUtil;
    private final AuthUtil authUtil;


    public void updatePassword(Long id,UpdateUserPasswordRequest request) {
        final User user = userRepository.findById(id).get();
        final var me = authUtil.getMe();
        if (authUtil.isAdmin() || me.getId() == user.getId()) {
            user.setPassword(passwordEncodeUtil.encode(request.getPassword()));
            userRepository.save(user);
        } else {
            throw new MyRuntimeException(ExceptionCodeConfig.VALIDATED_ERROR_TYPE, "您无权修改该密码");
        }
    }

    public PageFormat getAlipayUsers(Integer page, Integer size, String nickname) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            maps.add(builder.isNotNull(root.get("alipayAccount")));
            if (nickname != null && nickname.length() > 0) {
                maps.add(builder.like(root.get("alipayAccount").get("nickName").as(String.class), "%" + nickname + "%"));
            }

            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };

        final var userPage = userRepository.findAll(sf, pagingSort);

        return PageFormat.builder()
            .currentPage(page + 1)
            .size(size)
            .list(userPage.getContent())
            .total(userPage.getTotalElements())
            .build();
    }

    public User setUserRolePromoter(Long uid) {
        final User user = userRepository.findById(uid).get();
        final var roles = user.getRoles();
        if (!roles.contains(Role.ROLE_PROMOTER)) {
            roles.add(Role.ROLE_PROMOTER);
            userRepository.save(user);
        }

        return user;
    }

    public User unsetUserRolePromoter(Long uid) {
        final User user = userRepository.findById(uid).get();
        final var roles = user.getRoles();
        if (roles.contains(Role.ROLE_PROMOTER)) {
            roles.remove(Role.ROLE_PROMOTER);
            userRepository.save(user);
        }

        return user;
    }
}
