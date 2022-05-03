package com.zhuche.server.repositories;

import com.zhuche.server.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long>, JpaSpecificationExecutor {
    @Query("select o from Order o where o.alipayOutTradeNo = :alipayOutTradeNo")
    Order findByAlipayOutTradeNo(@Param("alipayOutTradeNo") String alipayOutTradeNo );

    @Query("select o from Order o where o.authNo = :authNo")
    Order findByAuthNo(@Param("authNo") String authNo);

    @Query("select o from Order o where o.outRequestNo = :outRequestNo")
    Order findByOutRequestNo(@Param("outRequestNo") String outRequestNo);
}
