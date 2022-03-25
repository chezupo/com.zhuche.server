package com.zhuche.server.repositories;

import com.zhuche.server.model.Area;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AreaRepository extends CrudRepository<Area, Long> {
    @Query("SELECT a FROM Area a WHERE city_code = :cityCode")
    Iterable<Area> findAllByProvinceCode(@Param("cityCode") String cityCode);

    @Query("SELECT a FROM Area a WHERE a.code = :code")
    Area findByCode(@Param("code") String areaCode);
}
