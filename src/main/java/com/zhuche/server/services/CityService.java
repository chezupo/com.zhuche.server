package com.zhuche.server.services;

import com.zhuche.server.model.City;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.CityRepository;
import com.zhuche.server.repositories.StoreRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class CityService {
    private final CityRepository cityRepository;
    private final StoreRepository storeRepository;

    public List<City> getCities() {
        final List<City> cities =  cityRepository.findAllByOrderByPinyinAsc().stream().map(el -> {
            if ("市辖区".equals(el.getName())) {
                el.setName(el.getProvince().getName());
            }
            return el;
        }).toList();

        return cities;
    }

    public List<City> getCitiesForStore() {
        // todo 随着门店数据量增加，这种先找出所以门店id会导致性能差
        final var cityCodes = storeRepository.findAll().stream().map(el -> el.getCity().getCode()).toList();

        return cityRepository.findAllByCodes(cityCodes);
    }
}
