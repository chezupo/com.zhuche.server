package com.zhuche.server.api.v1.admin;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.violation.CreateViolationRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.ViolationService;
import com.zhuche.server.validators.order.CheckOrderBelongsToMeForStartStore;
import com.zhuche.server.validators.order.CheckOrderStatusMustBeReturning;
import lombok.AllArgsConstructor;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.Min;

@RestController
@RequestMapping("/api/v1/orders")
@AllArgsConstructor
public class Violation {
    private final ViolationService violationService;

    /**
     * 创建违章
     * @return
     */
    @PostMapping("/{id}/violation")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN},
        isLog = true,
        title = "添加违章",
        type = LogType.UPDATED
    )
    public UnityResponse createViolation(
        @PathVariable("id")
        @CheckOrderBelongsToMeForStartStore
        @CheckOrderStatusMustBeReturning Long id,
        @RequestBody @Valid CreateViolationRequest request
    ) throws AlipayApiException {
        final var data = violationService.createViolation(id, request);
        return UnityResponse
            .builder()
            .data(data)
            .build();
    }

    /**
     * 获取违章
     * @return
     */
    @GetMapping("/violations")
    @Permission(
        roles = {Role.ROLE_BUSINESS, Role.ROLE_ADMIN}
    )
    public UnityResponse getViolation(
        @Param("page") @Min(1) Integer page,
        @Param("size") Integer size
    ) throws AlipayApiException {
        final var data = violationService.getPageData(page, size);
        return UnityResponse
            .builder()
            .data(data)
            .build();
    }
}
