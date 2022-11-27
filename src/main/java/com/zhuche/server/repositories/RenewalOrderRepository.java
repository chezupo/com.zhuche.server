package com.zhuche.server.repositories;

import com.zhuche.server.model.Order;
import com.zhuche.server.model.RenewalOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RenewalOrderRepository extends JpaRepository<RenewalOrder, Long>, JpaSpecificationExecutor {

    @Query("select o from RenewalOrder o where o.outTradeNo = :outTradeNo")
    RenewalOrder findByOutTradeNo(@Param("outTradeNo") String outTradeNo );
}
