package com.zhuche.server.repositories;

import com.zhuche.server.model.WechatAccount;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WechatAccountRepository  extends CrudRepository<WechatAccount, Long> {
    @Query("SELECT u from WechatAccount  u where u.openId= :openId")
    WechatAccount findByWechatUserid(@Param("openId") String openId);
}
