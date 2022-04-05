/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/27
 * Listen  MIT
 */

package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.car.CreateCarRequest;
import com.zhuche.server.dto.request.car.UpdateCarRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.CarService;
import com.zhuche.server.validators.car.CheckDateTimeRange;
import com.zhuche.server.validators.car.CheckDeleteCarId;
import com.zhuche.server.validators.car.CheckUpdateCarId;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.websocket.server.PathParam;

@RestController
@RequestMapping("/api/v1/cars")
@Validated
@RequiredArgsConstructor
@Slf4j
public class Car {
    private final CarService carService;

    @PostMapping
    @Permission(
        roles = {Role.ROLE_BUSINESS},
        isLog = true,
        title = "添加汽车",
        type = LogType.CREATED
    )
    public UnityResponse createCar(
        @RequestBody @Valid CreateCarRequest request
    ) {
        final com.zhuche.server.model.Car newCar  =  carService.createCar(request);

        return UnityResponse
            .builder()
            .data(newCar)
            .build();
    }

    @GetMapping
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN}
    )
    public UnityResponse fetchCar(
        @PathParam("page") Integer page,
        @PathParam("size") Integer size,
        @PathParam("name") String name,
        @PathParam("price") String price,
        @PathParam("deposit") String deposit,
        @PathParam("timeRange") @CheckDateTimeRange(isAllowNull = true) String timeRange
    ) {
        final PageFormat newCar  =  carService.fetchPageCars(
            page, size,
            name,
            price,
            deposit,
            timeRange
        );

        return UnityResponse
            .builder()
            .data(newCar)
            .build();
    }

    @PatchMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN},
        isLog = true,
        title = "修改汽车",
        type = LogType.DELETED
    )
    public UnityResponse updateCar(
        @PathVariable("id") @CheckUpdateCarId Long id,
        @RequestBody @Valid UpdateCarRequest request
    ) {
        final com.zhuche.server.model.Car newCar  =  carService.update(id, request);
        return UnityResponse
            .builder()
            .data(newCar)
            .build();
    }

    @DeleteMapping("/{id}")
    @Permission( roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN},
        isLog = true,
        title = "删除汽车",
        type = LogType.DELETED
    )
    public UnityResponse destroy(@PathVariable("id") @CheckDeleteCarId Long id) {
        carService.destroy(id);

        return UnityResponse
            .builder()
            .build();
    }
}
