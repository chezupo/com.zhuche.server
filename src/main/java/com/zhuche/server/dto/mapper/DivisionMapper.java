package com.zhuche.server.dto.mapper;

import com.zhuche.server.dto.response.division.AreaResponse;
import com.zhuche.server.dto.response.division.CityResponse;
import com.zhuche.server.dto.response.division.ProvinceResponse;
import com.zhuche.server.model.Area;
import com.zhuche.server.model.City;
import com.zhuche.server.model.Province;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface DivisionMapper {
    DivisionMapper INSTANCE = Mappers.getMapper(DivisionMapper.class);

    AreaResponse areaToAreaResponse(Area area);

    CityResponse cityToCityResponse(City city);

    ProvinceResponse provinceToProvinceResponse(Province province);
}
