package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.dto.response.me.promotion.PromotionInfoResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.MeService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("miniProgramMePromotion")
@RequestMapping("/api/v1/miniProgram/me/promotion")
@Slf4j
@Validated
@AllArgsConstructor
public class Promotion {
    private final MeService meService;

    @GetMapping
    @Permission(
        roles = {Role.ROLE_USER}
    )
    public UnityResponse getPromotionInfo() {
       PromotionInfoResponse promotionInfoResponse = meService.getPromotionInfo();

       return UnityResponse
           .builder()
           .data(promotionInfoResponse)
           .build();
    }
}
