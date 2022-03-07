package com.zhuche.server.dto.mapper;

import com.zhuche.server.dto.request.guid.CreateGuid;
import com.zhuche.server.dto.request.store.CreateStoreRequest;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.AreaRepository;
import com.zhuche.server.repositories.CityRepository;
import lombok.extern.slf4j.Slf4j;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.Named;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

@Mapper(componentModel = "spring", uses = {
    City.class,
    Province.class,
    Area.class
})
@Slf4j
public abstract class StoreMapper {
    @Autowired private AreaRepository areaRepository;
    @Autowired private CityRepository cityRepository;



    public abstract User createRequestToUser(CreateStoreRequest request);

    @Mappings({
        @Mapping(source = "banners", target = "banners", qualifiedByName = "fromMapToBanners"),
        @Mapping(source = "pickupGuids", target = "pickupGuides", qualifiedByName = "fromRequestGuidsToPickupGuide"),
        @Mapping(source = "returnGuids", target = "returnGuides", qualifiedByName = "fromRequestGuidsToReturnGuids"),
        @Mapping(source = "areaCode", target = "city", qualifiedByName = "fromAreCodeToCity"),
        @Mapping(source = "areaCode", target = "area", qualifiedByName = "fromAreCodeToArea"),
        @Mapping(source = "areaCode", target = "province", qualifiedByName = "fromAreCodeToProvince"),
        @Mapping(target = "isEnable", constant = "true")
    })
    public abstract Store createRequestToStore(CreateStoreRequest request);

    @Named("fromAreCodeToArea")
    protected Area fromAreCodeToArea(String areaCode) {
        return areaRepository.findByCode(areaCode);
    }
    @Named("fromAreCodeToProvince")
    protected Province  fromAreCodeToProvince(String areaCode) {
        final Area area = areaRepository.findByCode(areaCode);

        return area.getProvince();
    }

    @Named("fromAreCodeToCity")
    protected City fromAreCodeToCity(String areaCode) {
        final Area area = areaRepository.findByCode(areaCode);

        return area.getCity();
    }

    @Named("fromRequestGuidsToReturnGuids")
    protected List<ReturnGuid> fromRequestGuidsToReturnGuids(List<CreateGuid> guids) {
        var returnGuides = new ArrayList<ReturnGuid>();
        guids.stream().forEach(el -> {
            final var returnGuide= ReturnGuid.builder()
                .imgKey(el.getImgKey())
                .title(el.getTitle())
                .build();
            returnGuides.add(returnGuide);
        });

        return returnGuides;
    }

    @Named("fromRequestGuidsToPickupGuide")
    protected List<PickupGuid> fromRequestGuidsToPickupGuide(List<CreateGuid> guids) {
        var pickupGuides = new ArrayList<PickupGuid>();
        guids.stream().forEach(el -> {
            final var pickupGuide= PickupGuid.builder()
                .imgKey(el.getImgKey())
                .title(el.getTitle())
                .build();
            pickupGuides.add(pickupGuide);
        });

        return pickupGuides;
    }


    @Named("fromMapToBanners")
    protected List<StoreBanner> fromMapToBanners(List<String> bannerKeys) {
        var storeBanners = new ArrayList<StoreBanner>();
        bannerKeys.stream().forEach(el -> {
            var storeBannerItem = StoreBanner.builder()
                .imgKey(el)
                .build();
            storeBanners.add(storeBannerItem);
        });

        return storeBanners;
    }
}
