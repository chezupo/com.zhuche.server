package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.repositories.CityRepository;
import com.zhuche.server.repositories.ProvincesRepository;
import com.zhuche.server.services.CityService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController("miniProgramCity")
@RequestMapping("/api/v1/miniProgram/")
@AllArgsConstructor
public class City {
    private final CityService cityService;
    private final CityRepository cityRepository;
    private final ProvincesRepository provincesRepository;

    @GetMapping("cities")
    public UnityResponse getCities() {
        return UnityResponse.builder()
            .data(cityService.getCities())
            .build();
    }

    @GetMapping("popularCities")
    public UnityResponse getPopularCities() {
        final var province = provincesRepository.findByCode("46");
        List<com.zhuche.server.model.City> res = new ArrayList<>();
        if (province != null) {
            res = province.getCities();
        }

        return UnityResponse.builder().data(res).build();
    }

    @GetMapping("cities/{citiCode}/stores")
    public UnityResponse getCityStores(
        @PathVariable("citiCode") String  cityCode
    ) {
        final var city = cityRepository.findByCode(cityCode);
        return UnityResponse.builder().data(
            city.getAreas()
        ).build();
    }

}
