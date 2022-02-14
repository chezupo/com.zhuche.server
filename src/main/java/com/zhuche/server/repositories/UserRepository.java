package com.zhuche.server.repositories;

import com.zhuche.server.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
    User findUserById(Long l);

    User findUserByUsername(String username);
}
