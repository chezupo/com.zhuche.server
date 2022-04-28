package com.zhuche.server.repositories;

import com.zhuche.server.model.UserContact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserContactRepository extends JpaRepository<UserContact, Long> {
    @Query("select u from  UserContact u where u.user.id = :id")
    List<UserContact> findByUserId(@Param("id") Long id);
}
