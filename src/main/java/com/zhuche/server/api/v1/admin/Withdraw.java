package com.zhuche.server.api.v1.admin;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.withdraw.RejectWithDrawRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.LogType;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Transaction;
import com.zhuche.server.services.TransactionService;
import com.zhuche.server.services.WithdrawService;
import com.zhuche.server.validators.transaction.CheckTransactionIdMustBeExist;
import com.zhuche.server.validators.withdraw.CheckWithdrawMustBeProcessing;
import lombok.RequiredArgsConstructor;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.Min;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

@RestController
@RequestMapping("/api/v1/withdraws")
@Validated
@RequiredArgsConstructor
public class Withdraw {
    private final TransactionService transactionService;
    private final WithdrawService withdrawService;

    @GetMapping
    @Permission(roles = {Role.ROLE_ADMIN})
    public UnityResponse getWithDraws(
        @Param("page") @Min(1) Integer page,
        @Param("size") Integer size
    ) {
        final PageFormat pageData = transactionService.getWithdrawData(page, size);
       return UnityResponse
           .builder()
           .data(pageData)
           .build();
    }

    @PatchMapping("/{id}/status")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title= "通过用户的提现申请",
        type = LogType.UPDATED
    )
    public UnityResponse withDrawUpdate(
        @PathVariable("id") @CheckTransactionIdMustBeExist @CheckWithdrawMustBeProcessing Long id
    ) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final Transaction pageData = withdrawService.accessWithdraw(id);
        return UnityResponse
            .builder()
            .data(pageData)
            .build();
    }

    /**
     * 拒绝用户的提现申请
     * @param id
     * @return
     * @throws AlipayApiException
     */
    @PatchMapping("/{id}/status/failed")
    @Permission(
        roles = {Role.ROLE_ADMIN},
        isLog = true,
        title= "通过用户的提现申请",
        type = LogType.UPDATED
    )
    public UnityResponse rejectWithDrawUpdate(
        @PathVariable("id") @CheckTransactionIdMustBeExist @CheckWithdrawMustBeProcessing Long id,
        @RequestBody RejectWithDrawRequest request
        ) {
        final Transaction pageData = withdrawService.rejectWithdraw(id, request);
        return UnityResponse
            .builder()
            .data(pageData)
            .build();
    }
}
