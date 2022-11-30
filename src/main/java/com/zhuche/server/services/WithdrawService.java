package com.zhuche.server.services;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayFundTransUniTransferRequest;
import com.alipay.api.response.AlipayFundTransUniTransferResponse;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.path.variable.SocialType;
import com.zhuche.server.dto.request.withdraw.CreateWithDrawRequest;
import com.zhuche.server.dto.request.withdraw.RejectWithDrawRequest;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.TransactionRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import com.zhuche.server.util.TradeUtil;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

@Service
@AllArgsConstructor
@Slf4j
public class WithdrawService {
    private final TransactionRepository transactionRepository;
    private final JWTUtil jwtUtil;
    private final UserRepository userRepository;
    private final TransactionService transactionService;
    private final AlipayClient alipayClient;

    /**
     * 提现申请
     */
    @Transactional
    public List<Transaction> createAlipayWithdrawTransaction(CreateWithDrawRequest request, PayType payType) {
        final User me = jwtUtil.getUser();
        me.setBalance( me.getBalance() - request.getAmount() );
        userRepository.save(me);
        int balance = (int)(me.getBalance()* 100);
        var t = Transaction.builder()
            .user(me)
            .amount(-request.getAmount())
            .isWithDraw(true)
            .status(TransactionStatus.PROCESSING)
            .remark(request.getRemark())
            .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
            .title("余额提现申请")
            .payType(payType)
            .balance(balance)
            .build();
        if (request.getIsCommission()) {
            // 提现中金额
            t.setTitle("佣金提现申请");
            t.setTransactionType(TransactionType.COMMISSION);
            if (me.getWithdrawalInProgressCommission() == null) {
                me.setWithdrawalInProgressCommission(BigDecimal.valueOf(0));
            }
            var withdrawalInProgressCommission= me.getWithdrawalInProgressCommission();
            withdrawalInProgressCommission = new BigDecimal( withdrawalInProgressCommission.doubleValue() + request.getAmount() );
            me.setWithdrawalInProgressCommission(withdrawalInProgressCommission);
            // 佣金金额
            if (me.getCommission() == null ){
                me.setCommission(BigDecimal.valueOf(0));
            }
            me.setCommission(
                BigDecimal.valueOf(
                    me.getCommission().doubleValue() - request.getAmount()
                )
            );
            userRepository.save(me);
        }
        transactionRepository.save(t);

        return transactionService.getMyTransactions();
    }

    /**
     * 同意提现
     * @param id
     * @return
     * @throws AlipayApiException
     */
    @Transactional
    public Transaction accessWithdraw(Long id) throws AlipayApiException {
        final Transaction transaction = transactionRepository.findById(id).get();
        final String outBizNo = TradeUtil.generateOutTradeNo();
        final var amount = Math.round( Math.abs(transaction.getAmount()) * 100) / 100.0;
        final var title = transaction.getTitle();
        AlipayFundTransUniTransferRequest request = new AlipayFundTransUniTransferRequest();
        request.setBizContent("{" +
            "\"out_biz_no\":\"" + outBizNo + "\"," +
            "\"trans_amount\":" + amount + "," +
            "\"product_code\":\"TRANS_ACCOUNT_NO_PWD\"," +
            "\"biz_scene\":\"DIRECT_TRANSFER\"," +
            "\"order_title\":\"" + title + "\"," +
            "\"payee_info\":{" +
            "\"identity_type\":\"ALIPAY_USER_ID\"," +
            "\"identity\":\"" + transaction.getUser().getAlipayAccount().getUserId() + "\"," +
            "}," +
            "\"remark\":\"" + transaction.getRemark() + "\"," +
            "\"business_params\":\"{\\\"payer_show_name_use_alias\\\":\\\"true\\\"}\"" +
            "}");
        AlipayFundTransUniTransferResponse response = alipayClient.certificateExecute(request);
        if (!response.isSuccess()) {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "操作失败");
        }
        transaction.setStatus(TransactionStatus.FINISHED);
        transaction.setOutBizNo(outBizNo);
        transactionRepository.save(transaction);
        if (transaction.getTransactionType() == TransactionType.COMMISSION) {
            final User me = transaction.getUser();
             var commissionAmount = BigDecimal.valueOf(Math.abs(transaction.getAmount()));
            // 提现中现金
            me.setWithdrawalInProgressCommission(
                BigDecimal.valueOf( me.getWithdrawalInProgressCommission().doubleValue() - commissionAmount.doubleValue() )
            );
            // 已提现现金
            if (me.getWithdrawnCommission() == null) {
                me.setWithdrawnCommission(BigDecimal.valueOf(0));
            }
            me.setWithdrawnCommission( me.getWithdrawnCommission().add(commissionAmount) );
            userRepository.save(me);
        }

        return transaction;
    }

    /**
     * 拒绝用户申请
     * @param id
     * @param request
     * @return
     */
    @Transactional
    public Transaction rejectWithdraw(Long id, RejectWithDrawRequest request) {
        final Transaction transaction = transactionRepository.findById(id).get();
        transaction.setStatus(TransactionStatus.FAILED);
        transaction.setFailedReason(request.getReason());
        var user = transaction.getUser();
        var balance = user.getBalance() + Math.abs( transaction.getAmount());
        user.setBalance(balance);
        userRepository.save(user);
        if (transaction.getTransactionType() == TransactionType.COMMISSION) {
            final User me = transaction.getUser();
            var commissionAmount = BigDecimal.valueOf(Math.abs(transaction.getAmount()));
            // 提现中现金
            me.setWithdrawalInProgressCommission(
                BigDecimal.valueOf( me.getWithdrawalInProgressCommission().doubleValue() - commissionAmount.doubleValue() )
            );
            // 把拒绝的金额回退到佣金中
            if (me.getCommission() == null) {
                me.setCommission(BigDecimal.valueOf(0));
            }
            me.setCommission( me.getCommission().add(commissionAmount) );
            userRepository.save(me);
        }

        return transactionRepository.save(transaction);
    }
}
