package com.zhuche.server.repositories;

import com.zhuche.server.model.BrandSeries;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface BrandSeriesRepository extends JpaRepository<BrandSeries, Long>, JpaSpecificationExecutor {
}
