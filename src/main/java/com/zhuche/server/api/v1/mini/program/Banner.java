package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.MiniProgramBannerService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/miniProgram/banners")
@AllArgsConstructor
public class Banner {
    private final MiniProgramBannerService miniProgramBannerService;

    @GetMapping
    public UnityResponse getBanners() {
        return UnityResponse.builder()
            .data(miniProgramBannerService.getBanners())
            .build();
    }
}
