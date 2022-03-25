package com.zhuche.server.dto.mapper;

import com.zhuche.server.dto.request.brand.CreateBrandRequest;
import com.zhuche.server.model.Brand;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface BrandMapper {
    Brand createBrandToBrand(CreateBrandRequest request);
}
