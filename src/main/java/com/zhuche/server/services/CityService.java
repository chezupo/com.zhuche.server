package com.zhuche.server.services;

import com.zhuche.server.model.City;
import com.zhuche.server.repositories.CityRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class CityService {
    private final CityRepository cityRepository;
    public List<City> getCities() {
        final List<City> cities =  cityRepository.findAllByOrderByPinyinAsc().stream().map(el -> {
            if ("市辖区".equals(el.getName())) {
                el.setName(el.getProvince().getName());
            }
            return el;
        }).toList();

        return cities;
    }
}
