package com.zhuche.server.dto.mapper;

import com.zhuche.server.dto.request.promotionalPoster.UpdatePromotionalPosterRequest;
import com.zhuche.server.dto.response.division.AreaResponse;
import com.zhuche.server.dto.response.division.CityResponse;
import com.zhuche.server.dto.response.division.ProvinceResponse;
import com.zhuche.server.model.Area;
import com.zhuche.server.model.City;
import com.zhuche.server.model.PromotionalPoster;
import com.zhuche.server.model.Province;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface PosterMapper {
    PosterMapper INSTANCE = Mappers.getMapper(PosterMapper.class);

   PromotionalPoster updatePromotionalPosterRequestToPromotionalPoster(UpdatePromotionalPosterRequest request);
}
