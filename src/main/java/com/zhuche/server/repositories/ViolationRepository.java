package com.zhuche.server.repositories;

import com.zhuche.server.model.Violation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ViolationRepository extends JpaRepository<Violation, Long> {
    @Query("select v from Violation v where v.user.id = :id")
    List<Violation> findAllByUserId(@Param("id") Long id);
}
