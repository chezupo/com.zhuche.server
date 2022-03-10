package com.zhuche.server.repositories;

import com.zhuche.server.model.ReturnGuid;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReturnGuidRepository extends CrudRepository<ReturnGuid, Long>, JpaSpecificationExecutor {
}
