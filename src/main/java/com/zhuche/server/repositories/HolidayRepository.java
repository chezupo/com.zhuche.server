package com.zhuche.server.repositories;

import com.zhuche.server.model.District;
import com.zhuche.server.model.Holiday;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HolidayRepository extends CrudRepository<Holiday, Long> {
    @Query("select h from Holiday  h where h.day = :day")
    Holiday findByDay(@Param("day") Long day);


    @Query("select h from Holiday  h where h.day between :startTimeStamp and :endTimeStamp")
    List<Holiday> findAllByTimeStamp(@Param("startTimeStamp") Long start, @Param("endTimeStamp") Long end);
}
