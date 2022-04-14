package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.AgreementService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("miniProgramAgreements")
@RequestMapping("/api/v1/miniProgram/agreements")
@AllArgsConstructor
public class Agreements {
    private final AgreementService agreementService;

    @GetMapping("/checkoutOrderAgreements")
    public UnityResponse getCheckoutOrderAgreements() {
        return UnityResponse.builder()
            .data(agreementService.getCheckoutOrderAgreements())
            .build();
    }
}
