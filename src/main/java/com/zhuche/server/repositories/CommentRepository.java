package com.zhuche.server.repositories;

import com.zhuche.server.model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Long>, JpaSpecificationExecutor {
    @Query("SELECT c from Comment c where c.order.id = :id")
    Comment findByOrderId(@Param("id") Long id);

    @Query("SELECT c from Comment c where c.store.id = :id")
    List<Comment> findAllByStoreId(@Param("id") Long storeId);
}

