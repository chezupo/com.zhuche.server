package com.zhuche.server.repositories;

import com.zhuche.server.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long>, JpaSpecificationExecutor {
    @Query("select o from Order o where o.outTradeNo = :outTradeNo")
    Order findByOutTradeNo(@Param("outTradeNo") String outTradeNo );

    @Query("select o from Order o where o.authNo = :authNo")
    Order findByAuthNo(@Param("authNo") String authNo);

    @Query("select o from Order o where o.outRequestNo = :outRequestNo")
    Order findByOutRequestNo(@Param("outRequestNo") String outRequestNo);

    @Query("SELECT COUNT(o) FROM Order o WHERE o.createdAt BETWEEN :startTimeStamp AND :endTimeStamp")
    Long getOrderCountBetweenTimeStamp(
        @Param("startTimeStamp") Long startTimeStamp,
        @Param("endTimeStamp") Long endTimeStamp
    );

    @Query("select o from Order o where o.promotionLevel1User.id in(:id) OR o.promotionLevel2User.id in(:id) order by o.id DESC")
    List<Order> findByPromotionUserId(@Param("id")Long id);
}
