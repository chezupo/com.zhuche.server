package com.zhuche.server.repositories;

import com.zhuche.server.model.StoreCarConfig;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface StoreCarConfigRepository extends JpaRepository<StoreCarConfig, Long>, JpaSpecificationExecutor { }
