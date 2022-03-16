package com.zhuche.server.repositories;

import com.zhuche.server.model.District;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DistrictRepository  extends CrudRepository<District, Long> {
    @Query("select d from District d where d.name like %:name% ")
    List<District> findByName(@Param("name")String name);
}
