package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.repositories.CityRepository;
import com.zhuche.server.services.CityService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("miniProgramCity")
@RequestMapping("/api/v1/miniProgram/cities")
@AllArgsConstructor
public class City {
    private final CityService cityService;

    @GetMapping
    public UnityResponse getCities() {
        return UnityResponse.builder()
            .data(cityService.getCities())
            .build();
    }
}
