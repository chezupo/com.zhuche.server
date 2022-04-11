package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.store.CreateStoreRequest;
import com.zhuche.server.dto.request.store.UpdateStoreRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.StoreCarConfig;
import com.zhuche.server.repositories.AreaRepository;
import com.zhuche.server.services.StoreCarConfigService;
import com.zhuche.server.services.StoreService;
import com.zhuche.server.validators.store.HasStoreValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.Min;
import java.util.List;

@RestController
@RequestMapping("/api/v1/stores")
@Validated
@RequiredArgsConstructor
@Slf4j
public class Store {
    private final StoreService storeService;
    private final AreaRepository areaRepository;
    private final StoreCarConfigService storeCarConfigService;

    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "创建商店",
        type = LogType.CREATED
    )
    @PostMapping
    public UnityResponse createStore(@RequestBody @Valid CreateStoreRequest request) {
        var res = storeService.createStore(request);
        return UnityResponse.builder()
            .data(res)
            .build();
    }

    @Permission(
        roles =  {Role.ROLE_ADMIN, Role.ROLE_BUSINESS}
    )
    @GetMapping
    public UnityResponse getStores(
        @Param("page") @Min(1) Integer page,
        @Param("size") Integer size,
        @Param("name") String name,
        @Param("provinceCode") String provinceCode,
        @Param("cityCode") String cityCode,
        @Param("areaCode") String areaCode
    ) {

        PageFormat pageDate = storeService.getPage(page, size, name, provinceCode, cityCode, areaCode);

        return UnityResponse.builder()
            .data(pageDate)
            .build();
    }

    @Permission(
        isLog = true,
        roles = {Role.ROLE_ADMIN},
        title = "删除商店",
        type = LogType.DELETED
    )
    @DeleteMapping("/{id}")
    public UnityResponse destroy(
        @PathVariable @HasStoreValidator Long id
    ) {
        storeService.destroy(id);

        return UnityResponse.builder()
            .build();
    }

    @Permission(
        roles = {Role.ROLE_ADMIN, Role.ROLE_BUSINESS},
        isLog = true,
        title = "更新商店",
        type = LogType.UPDATED
    )
    @PatchMapping("/{id}")
    public UnityResponse update(
        @PathVariable("id") @HasStoreValidator Long id,
        @RequestBody @Valid UpdateStoreRequest request
    ) {
        final var newStoreItem = storeService.update(id, request);

        return UnityResponse
            .builder()
            .data(newStoreItem)
            .build();
    }

    @Permission(
        roles = {Role.ROLE_ADMIN, Role.ROLE_BUSINESS}
    )
    @GetMapping("/{id}/cars/configs")
    public UnityResponse getStoreCarConfig(
        @PathVariable("id") @HasStoreValidator Long id
    ) {
        final List<StoreCarConfig> configs = storeCarConfigService.getStoreConfigsByStoreId(id);

        return UnityResponse
            .builder()
            .data(configs)
            .build();
    }
}
