package com.zhuche.server.repositories;

import com.zhuche.server.model.PickupGuid;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PickupGuidRepository extends CrudRepository<PickupGuid, Long> { }
