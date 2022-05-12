package com.zhuche.server.repositories;

import com.zhuche.server.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long>, JpaSpecificationExecutor {
    User findUserById(Long l);

    User findUserByUsername(String username);

    @Query("SELECT count(u) from User u where u.createdAt between :startTimeStamp and :endTimeStamp")
    Long getCountBetweenTimestamp(@Param("startTimeStamp") Long startTimeStamp, @Param("endTimeStamp") Long endTimeStamp);

    @Query("SELECT count(u) from User u where u.user.id in(:ids)")
    Long countPromotionUser(@Param("ids") List<Long> ids);

    @Query("SELECT u from User u where u.user.id in(:ids)")
    List<User> findPromotionUsers(List<Long> ids);
}
