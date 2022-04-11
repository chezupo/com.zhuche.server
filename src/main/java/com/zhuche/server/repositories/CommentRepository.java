package com.zhuche.server.repositories;

import com.zhuche.server.model.Comments;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentRepository extends CrudRepository<Comments, Long>, JpaSpecificationExecutor { }

