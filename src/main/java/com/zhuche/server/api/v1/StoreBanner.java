package com.zhuche.server.api.v1;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.StoreBannerService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.constraints.Min;

@RestController("StoreBannerApi")
@RequestMapping("/api/v1/stores")
@Slf4j
@RequiredArgsConstructor
@Validated
public class StoreBanner {
    private final StoreBannerService storeBannerService;

    @GetMapping("/banners")
    public UnityResponse getStoreBanners(
        @Param("page") @Min(1) Integer page,
        @Param("size") Integer size,
        @Param("storeId") Long storeId
    ) {
        return UnityResponse.builder()
            .data(storeBannerService.getStoreBanners(page, size, storeId))
            .build();
    }
}
