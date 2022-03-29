/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/28
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.repositories.LogRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class LogService {
    private final LogRepository logRepository;

    public PageFormat getLogs(Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Pageable pagingSort = PageRequest.of(page, size, Sort.by("id").descending());
        final var pageData = logRepository.findAll(pagingSort);

        return PageFormat
            .builder()

            .currentPage(page + 1)
            .list(pageData.getContent())
            .size(size)
            .total(pageData.getTotalElements())
            .build();
    }

}
