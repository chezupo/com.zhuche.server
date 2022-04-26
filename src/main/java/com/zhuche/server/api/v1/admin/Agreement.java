package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.agreement.UpdateAgreementRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.AgreementService;
import com.zhuche.server.validators.agreement.CheckAgreementIdMustBeExist;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/v1/agreements")
@Validated
@AllArgsConstructor
public class Agreement {
    private final AgreementService agreementService;

    @GetMapping("/checkoutOrderAgreements")
    public UnityResponse getCheckoutOrderAgreements() {
        final List<com.zhuche.server.model.Agreement> agreementList = agreementService.getCheckoutOrderAgreements();
        return UnityResponse.builder()
            .data(agreementList)
            .build();
    }

    /**
     * 获取登录相关说明协议
     * @return
     */
    @GetMapping("/loginAgreements")
    public UnityResponse getLoginAgreements() {
        final List<com.zhuche.server.model.Agreement> agreementList = agreementService.getLoginAgreements();
        return UnityResponse.builder()
            .data(agreementList)
            .build();
    }


    @PatchMapping("/{id}")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        type = LogType.UPDATED,
        title = "更新协议"
    )
    public UnityResponse updateAgreement(
        @PathVariable("id") @CheckAgreementIdMustBeExist Long id,
        @RequestBody @Valid UpdateAgreementRequest updateAgreementRequest
    ) {
        final com.zhuche.server.model.Agreement newAgreement = agreementService.updateAgreement(id, updateAgreementRequest);
        return UnityResponse.builder()
            .data(newAgreement)
            .build();
    }
}
