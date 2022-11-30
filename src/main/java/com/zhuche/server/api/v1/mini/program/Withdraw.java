package com.zhuche.server.api.v1.mini.program;

import com.alipay.api.AlipayApiException;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.withdraw.CreateWithDrawRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.PayType;
import com.zhuche.server.model.Transaction;
import com.zhuche.server.services.WithdrawService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Objects;

@RestController("miniProgramWithdrawing")
@RequestMapping("/api/v1/miniProgram/withdrawing")
@AllArgsConstructor
@Validated
@Slf4j
public class Withdraw {
    private final WithdrawService withdrawService;

    /**
     * 提现申请
     * @param social
     * @param request
     * @return
     * @throws AlipayApiException
     */
    @PostMapping("/{social}")
    public UnityResponse createWithDrawing(
        @PathVariable("social") String social,
        @RequestBody @Valid CreateWithDrawRequest request
    ) {
        if (Objects.equals(social, SocialType.ALIPAY.toString())) {
            final List<Transaction> transactionList =  withdrawService.createAlipayWithdrawTransaction(request, PayType.ALIPAY);
            return UnityResponse.builder()
                .data(transactionList)
                .build();
        } else if (Objects.equals(social, SocialType.WECHAT.toString())) {
            final List<Transaction> transactionList =  withdrawService.createAlipayWithdrawTransaction(request, PayType.WECHAT);
            return UnityResponse.builder()
                .data(transactionList)
                .build();
        }
        throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE);
    }
}