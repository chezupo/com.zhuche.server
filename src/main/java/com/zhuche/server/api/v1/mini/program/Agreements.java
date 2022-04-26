package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Agreement;
import com.zhuche.server.services.AgreementService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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


    /**
     * 获取登录相关的说明协议
     * @return
     */
    @GetMapping("/loginAgreements")
    public UnityResponse getLoginAgreements() {
        return UnityResponse.builder()
            .data(agreementService.getLoginAgreements())
            .build();
    }

    /**
     * 获取登录相关的说明协议
     * @return
     */
    @GetMapping("/{id}")
    public UnityResponse getAgreement(
        @PathVariable("id") Long id
    ) {
        final Agreement agreement  =  agreementService.getArgumentById(id);
        return UnityResponse.builder()
            .data(agreement)
            .build();
    }
}
