package com.zhuche.server.api.v1.mini.program;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.transaction.CreateTopUpRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.TransactionService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Objects;

@RestController("miniProgramTransaction")
@RequestMapping("/api/v1/miniProgram/transaction")
@AllArgsConstructor
@Validated
public class Transaction {
    private final TransactionService transactionService;

    @PostMapping("/{socials}/topUp")
    public UnityResponse topUp(
        @PathVariable("socials") String social,
        @RequestBody @Valid CreateTopUpRequest request
    ) throws AlipayApiException {
        if (Objects.equals(social, SocialType.ALIPAY.toString())) {
            final String tradeNo = transactionService.createAlipayTopTradeOrder(request);
            return UnityResponse.builder()
                .data(tradeNo)
                .build();
        }
        throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE);
    }

    @GetMapping
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse getTransactions( ) {
        final List<com.zhuche.server.model.Transaction> transactionList = transactionService.getMyTransactions();
        return UnityResponse
            .builder()
            .data(transactionList)
            .build();
    }
}
