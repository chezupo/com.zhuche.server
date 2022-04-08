package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.car.category.CreateCategoryRequest;
import com.zhuche.server.dto.request.car.category.UpdateCategoryRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Car;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.CarCategoryService;
import com.zhuche.server.validators.car.category.CheckCarCategoryIdMustBeExist;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.annotations.Parameter;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.Min;

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

    @GetMapping
    @Permission( roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN} )
    public UnityResponse fetchPageData(
        @Param("page") @Min(1) Integer page,
        @Param("size") Integer size
    ) {
        final PageFormat pageDate = carCategoryService.fetchPageData(page, size);
        return UnityResponse.builder()
            .data(pageDate)
            .build();
    }

    @PatchMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN},
        isLog = true,
        type = LogType.UPDATED,
        title = "修改汽车分类"
    )
    public UnityResponse update(
        @PathVariable("id") @CheckCarCategoryIdMustBeExist Long id,
        @RequestBody @Valid UpdateCategoryRequest request
        ) {
        final com.zhuche.server.model.CarCategory newCarCategory = carCategoryService.update(id, request);

        return UnityResponse.builder()
            .data(newCarCategory)
            .build();
    }

    @DeleteMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN},
        isLog = true,
        type = LogType.DELETED,
        title = "删除汽车分类"
    )
    public UnityResponse destroy(
        @PathVariable("id") @CheckCarCategoryIdMustBeExist Long id
    ) {
        carCategoryService.destroyById(id);

        return UnityResponse.builder()
            .build();
    }
}
