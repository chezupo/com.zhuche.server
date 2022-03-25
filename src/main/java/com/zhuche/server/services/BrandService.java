/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/22
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.BrandMapper;
import com.zhuche.server.dto.request.brand.CreateBrandRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Brand;
import com.zhuche.server.repositories.BrandRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.text.Format;

@Service
@AllArgsConstructor
public class BrandService {
    private final BrandRepository brandRepository;
    private final JWTUtil jwtUtil;
    private final BrandMapper brandMapper;

    public Brand createBrand(CreateBrandRequest requestBody) {
        final var store = jwtUtil.getUser().getStore();
        final var newBrand = Brand.builder()
            .name(requestBody.getName())
            .store(store)
            .imgKey(requestBody.getImgKey())
            .build();

        return brandRepository.save(newBrand);
    }

    public PageFormat getBrands(Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Pageable pagingSort = PageRequest.of(page, size);

        final var pageData = brandRepository.findAll(pagingSort);
        return PageFormat.builder()
            .size(pageData.getSize())
            .total(pageData.getTotalElements())
            .list(pageData.getContent())
            .currentPage(pageData.getNumber() + 1)
            .build();
    }
}
