package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.promotionalPoster.CreatePromotionalPosterRequest;
import com.zhuche.server.dto.request.promotionalPoster.UpdatePromotionalPosterRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.PromotionalPosterService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.websocket.server.PathParam;

@RestController
@RequestMapping("/api/v1/promotionalPoster")
@Validated
@AllArgsConstructor
public class PromotionalPoster {
    private final PromotionalPosterService promotionalPosterService;

    @GetMapping
    @Permission(roles = {
        Role.ROLE_ADMIN
    })
    public UnityResponse getOrders(
        @PathParam("page") Integer page,
        @PathParam("size") Integer size
    ) {
        final PageFormat data = promotionalPosterService.getPageData(page, size);

        return UnityResponse.builder()
            .data(data)
            .build();
    }

    @PostMapping
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "创建推广海报",
        type = LogType.CREATED
    )
    public UnityResponse createPoster(
        @RequestBody @Valid CreatePromotionalPosterRequest request
    ) {
        com.zhuche.server.model.PromotionalPoster promotionalPoster =  promotionalPosterService.createPoster(request);
        return UnityResponse
            .builder()
            .data(promotionalPoster)
            .build();
    }

    @PatchMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "修改推广海报",
        type = LogType.UPDATED
    )
    public UnityResponse updatePoster(
        @PathVariable("id") Long id,
        @RequestBody @Valid UpdatePromotionalPosterRequest request
    ) {
        com.zhuche.server.model.PromotionalPoster promotionalPoster =  promotionalPosterService.updatePoster(id, request);
        return UnityResponse
            .builder()
            .data(promotionalPoster)
            .build();
    }

    @DeleteMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title = "删除推广海报",
        type = LogType.DELETED
    )
    public UnityResponse deletePoster( @PathVariable("id") Long id ) {
        promotionalPosterService.deletePoster(id);
        return UnityResponse
            .builder()
            .build();
    }
}
