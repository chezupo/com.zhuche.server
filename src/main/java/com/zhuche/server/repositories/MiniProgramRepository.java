package com.zhuche.server.repositories;

import com.zhuche.server.model.MiniProgramUser;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.ResponseBody;

@ResponseBody
public interface MiniProgramRepository extends CrudRepository<MiniProgramUser, Long> {
    @Query("SELECT u from MiniProgramUser u where u.alipayUserId = :alipayUserId")
    MiniProgramUser findByAlipayUserid(@Param("alipayUserId") String alipayUserId);
}
