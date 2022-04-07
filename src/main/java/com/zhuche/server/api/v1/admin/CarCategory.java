package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.car.CreateCarRequest;
import com.zhuche.server.dto.request.car.category.CreateCategoryRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.CarCategoryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/cars/categories")
@Validated
@RequiredArgsConstructor
@Slf4j
public class CarCategory {
    private final CarCategoryService carCategoryService;

    @PostMapping
    @Permission(
        roles = {Role.ROLE_BUSINESS},
        isLog = true,
        type = LogType.CREATED,
        title = "创建汽车分类"
    )
    public UnityResponse create(
        @RequestBody @Valid CreateCategoryRequest request
    ) {
       final var newCarCategory =  carCategoryService.create(request);

       return UnityResponse.builder()
           .data(newCarCategory)
           .build();
    }
}
