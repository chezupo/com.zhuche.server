/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/31
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.request.brand.series.CreateSeriesRequest;
import com.zhuche.server.model.BrandSeries;
import com.zhuche.server.repositories.BrandRepository;
import com.zhuche.server.repositories.BrandSeriesRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class BrandSeriesService {
    private final BrandSeriesRepository brandSeriesRepository;
    private final BrandRepository brandRepository;

    public BrandSeries createBrandSeries(Integer brandId, CreateSeriesRequest request) {
        final var brand = brandRepository.findById(brandId.longValue()).get();
        return brandSeriesRepository.save(
            BrandSeries.builder()
                .name(request.getName())
                .brand(brand)
                .build()
        );
    }
}
