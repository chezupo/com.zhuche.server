/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/28
 * Listen  MIT
 */

package com.zhuche.server.dto.mapper;

import com.zhuche.server.dto.request.car.CreateCarRequest;
import com.zhuche.server.dto.request.car.UpdateCarRequest;
import com.zhuche.server.model.BrandSeries;
import com.zhuche.server.model.Car;
import com.zhuche.server.model.StoreCarConfig;
import com.zhuche.server.repositories.BrandSeriesRepository;
import com.zhuche.server.repositories.StoreCarConfigRepository;
import lombok.AllArgsConstructor;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.Named;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Mapper(componentModel = "spring")
@Component
public abstract class CarMapper {
    @Autowired private BrandSeriesRepository brandSeriesRepository;
    @Autowired private StoreCarConfigRepository storeCarConfigRepository;

    @Mappings({
        @Mapping(source = "tags", target = "tags", qualifiedByName = "fromRequestTagsToPickupTags"),
        @Mapping(source = "seriesId", target = "brandSeries", qualifiedByName = "fromRequestSeriesIdToBrandSeries"),
        @Mapping(source = "configIds", target = "configs", qualifiedByName = "fromRequestConfigIdsIdToConfigs")
    })
    public abstract Car createCarRequestToCar(CreateCarRequest request);

    @Mappings({
        @Mapping(source = "tags", target = "tags", qualifiedByName = "fromRequestTagsToPickupTags"),
        @Mapping(source = "seriesId", target = "brandSeries", qualifiedByName = "fromRequestSeriesIdToBrandSeries"),
        @Mapping(source = "configIds", target = "configs", qualifiedByName = "fromRequestConfigIdsIdToConfigs")
    })
    public abstract Car updateCarRequestToCar(UpdateCarRequest request);

    @Named("fromRequestTagsToPickupTags")
    protected String fromRequestTagsToPickupTags(List<String> tags) {
        return String.join(",", tags);
    }

    @Named("fromRequestSeriesIdToBrandSeries")
    protected BrandSeries fromRequestSeriesIdToBrandSeries(Long id ) {
        return brandSeriesRepository.findById(id).get();
    }

    @Named("fromRequestConfigIdsIdToConfigs")
    protected Set<StoreCarConfig> fromRequestConfigIdsIdToConfigs(List<Long> configIds ) {
        final Set<StoreCarConfig> res = new HashSet<StoreCarConfig>();
        for (final Long id : configIds) {
            final var option = storeCarConfigRepository .findById(id);
            option.ifPresent(res::add);
        }

        return res;
    }
}
