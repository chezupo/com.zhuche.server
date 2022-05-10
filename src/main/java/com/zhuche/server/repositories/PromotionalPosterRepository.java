package com.zhuche.server.repositories;

import com.zhuche.server.model.PromotionalPoster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionalPosterRepository extends JpaRepository<PromotionalPoster, Long> {
}
