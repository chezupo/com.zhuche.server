package com.zhuche.server.repositories;

import com.zhuche.server.model.Agreement;
import com.zhuche.server.model.AgreementType;
import com.zhuche.server.model.Banner;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AgreementRepository extends JpaRepository<Agreement, Long>, JpaSpecificationExecutor {
    @Query("SELECT a FROM Agreement a where a.type = :type")
    List<Agreement> getCheckoutOrderAgreements(@Param("type")AgreementType type);
}
