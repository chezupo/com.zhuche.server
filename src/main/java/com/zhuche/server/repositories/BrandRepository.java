package com.zhuche.server.repositories;

import com.zhuche.server.model.Brand;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BrandRepository  extends CrudRepository<Brand, Long> {
}
