package com.zhuche.server.repositories;

import com.zhuche.server.model.Province;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface  ProvincesRepository extends CrudRepository<Province, Long> {}
