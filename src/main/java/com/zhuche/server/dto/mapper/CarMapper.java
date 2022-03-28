/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/28
 * Listen  MIT
 */

package com.zhuche.server.dto.mapper;

import com.zhuche.server.dto.request.car.CreateCarRequest;
import com.zhuche.server.model.Car;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.Named;

import java.util.List;

@Mapper(componentModel = "spring")
public abstract class CarMapper {
    @Mappings({
        @Mapping(source = "tags", target = "tags", qualifiedByName = "fromRequestTagsToPickupTags")
    })
    public abstract Car createCarRequestToCar(CreateCarRequest request);

    @Named("fromRequestTagsToPickupTags")
    protected String fromRequestTagsToPickupTags(List<String> tags) {
        return String.join(",", tags);
    }
}
