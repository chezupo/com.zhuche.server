package com.zhuche.server.repositories;

import com.zhuche.server.model.CarCategory;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CarCategoryRepository extends CrudRepository<CarCategory, Long>, JpaSpecificationExecutor { }
