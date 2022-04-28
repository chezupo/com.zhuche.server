package com.zhuche.server.repositories;

import com.zhuche.server.model.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TransactionRepository extends JpaRepository<Transaction, Long> {
    @Query("select t from Transaction t where t.alipayOutTradeNo = :outTradeNo")
    Transaction findByOutTradeNo(@Param("outTradeNo") String out_trade_no);
}