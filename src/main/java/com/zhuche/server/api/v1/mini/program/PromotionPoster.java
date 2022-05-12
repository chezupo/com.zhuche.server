package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.PromotionalPosterService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("miniProgramPromotionPoster")
@RequestMapping("/api/v1/miniProgram/promotionPosters")
@Slf4j
@Validated
@AllArgsConstructor
public class PromotionPoster {
    private final PromotionalPosterService promotionalPosterService;

    @GetMapping
    public UnityResponse getPoster() {
        return UnityResponse.builder()
            .data(promotionalPosterService.getPageData())
            .build();
    }
}
