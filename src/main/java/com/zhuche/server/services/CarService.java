/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/28
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.CarMapper;
import com.zhuche.server.dto.request.car.CreateCarRequest;
import com.zhuche.server.model.Car;
import com.zhuche.server.repositories.CarRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import javax.validation.Valid;

@Service
@AllArgsConstructor
public class CarService {
    private final JWTUtil jwtUtil;
    private final CarMapper carMapper;
    private final CarRepository carRepository;


    public Car createCar(@Valid CreateCarRequest request)  {
        final var meyStore = jwtUtil.getUser().getStore();
        Car newCar = carMapper.createCarRequestToCar(request);
        newCar.setStore(meyStore);

        return carRepository.save(newCar);
    }
}
