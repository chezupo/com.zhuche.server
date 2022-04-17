package com.zhuche.server.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface UserCouponRepository extends JpaRepository<com.zhuche.server.model.UserCoupon, Long>, JpaSpecificationExecutor {
}
