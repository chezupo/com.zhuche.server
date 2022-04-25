package com.zhuche.server.util;

import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.BaseEntity;
import com.zhuche.server.model.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public class PaginationUtil {

    public PageFormat getPageFormat(JpaRepository<? extends BaseEntity, Long> dao, Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        final var pageData = dao.findAll(pagingSort);

        return covertPageFormat(pageData);
    }

    public PageFormat covertPageFormat(Page<? extends BaseEntity> pageData) {
        return PageFormat.builder()
            .total(pageData.getTotalElements() )
            .list(pageData.stream().toList())
            .currentPage(pageData.getPageable().getPageNumber() + 1)
            .size(pageData.getPageable().getPageSize())
            .build();
    }
}
