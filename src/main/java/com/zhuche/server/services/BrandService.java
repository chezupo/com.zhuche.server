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
import com.zhuche.server.model.Brand;
import com.zhuche.server.repositories.BrandRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

@Service
@AllArgsConstructor
public class BrandService {
    private final BrandRepository brandRepository;
    private final JWTUtil jwtUtil;

    private final BrandMapper brandMapper;

   public Brand createBrand(CreateBrandRequest requestBody) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        final var store = jwtUtil.getUser().getStore();
        final var newBrand = brandMapper.createBrandToBrand(requestBody);
        newBrand.setStore(store);

        return brandRepository.save(newBrand);
    }

}
