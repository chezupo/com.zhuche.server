package com.zhuche.server.repositories;

import com.zhuche.server.model.City;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CityRepository extends CrudRepository<City, Long> {
    @Query("SELECT c FROM City c WHERE province_code = :province")
    Iterable<City> findAllByProvinceCode(@Param("province") String provinceCode);

    @Query("select c from City c where c.code = :code")
    City findByCode(@Param("code") String code);

    List<City> findAll();

    List<City> findAllByOrderByPinyinAsc();
}
