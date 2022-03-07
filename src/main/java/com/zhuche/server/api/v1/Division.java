package com.zhuche.server.api.v1;

import com.zhuche.server.dto.mapper.DivisionMapper;
import com.zhuche.server.dto.response.division.AreaResponse;
import com.zhuche.server.model.Area;
import com.zhuche.server.model.City;
import com.zhuche.server.model.Province;
import com.zhuche.server.repositories.AreaRepository;
import com.zhuche.server.repositories.CityRepository;
import com.zhuche.server.repositories.ProvincesRepository;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
@AllArgsConstructor
public class Division {
    private final ProvincesRepository provincesRepository;

    private final CityRepository citiesRepository;

    private final AreaRepository areaRepository;

    private final DivisionMapper divisionMapper;

    @GetMapping("/province")
    public Iterable<Province> getProvince() {
        return provincesRepository.findAll();
    }

    @GetMapping("/province/{provinceCode}/cities")
    public Iterable<City> getCities(
        @PathVariable("provinceCode") String provinceCode
    ) {
        return citiesRepository.findAllByProvinceCode(provinceCode);
    }

    @GetMapping("/province/{provinceCode}/cities/{cityCode}/area")
    public Iterable<Area> getAreas(
        @PathVariable("cityCode") String cityCode
    ) {
        return areaRepository.findAllByProvinceCode(cityCode);
    }

    @GetMapping("/province/cities/area/{areaCode}")
    public AreaResponse getArea(@PathVariable("areaCode") String areaCode) {
        Area ares = areaRepository.findByCode(areaCode);

        return divisionMapper.areaToAreaResponse(ares);
    }
}
