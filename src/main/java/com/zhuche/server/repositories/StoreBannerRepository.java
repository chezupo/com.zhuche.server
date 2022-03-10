package com.zhuche.server.repositories;

import com.zhuche.server.model.StoreBanner;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface StoreBannerRepository extends JpaRepository<StoreBanner, Long>, JpaSpecificationExecutor {
}
