package com.zhuche.server.repositories;

import com.zhuche.server.model.AlipayAccount;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.ResponseBody;

@ResponseBody
public interface AlipayAccountRepository extends CrudRepository<AlipayAccount, Long> {
    @Query("SELECT u from AlipayAccount u where u.userId = :alipayUserId")
    AlipayAccount findByAlipayUserid(@Param("alipayUserId") String alipayUserId);
}
