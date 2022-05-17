package com.zhuche.server.repositories;

import com.zhuche.server.model.Store;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StoreRepository extends JpaRepository<Store, Long>, JpaSpecificationExecutor {
    @Query("SELECT s FROM Store s")
    Page<Store> getStores(Pageable pageable);

    @Query(
        value = "SELECT *, ( st_distance ( point ( lng, lat ), point ( :lng, :lat ))* 111195 / 1000 ) AS juli FROM store ORDER BY juli ASC LIMIT 1"
        , nativeQuery = true
    )
    Store findByLocation(@Param("lat") float lat, @Param("lng") float lng);
}
