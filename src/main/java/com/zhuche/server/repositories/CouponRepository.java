package com.zhuche.server.repositories;

import com.zhuche.server.model.Coupon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CouponRepository extends JpaRepository<Coupon, Long>, JpaSpecificationExecutor {
    @Query("select c from Coupon c where c.isAutoDispatchingToNewUser = true")
    List<Coupon> findAllByIsAutoDispatchingToNewUser();
}
