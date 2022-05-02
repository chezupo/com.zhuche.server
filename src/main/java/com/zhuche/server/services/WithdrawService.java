package com.zhuche.server.services;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayFundTransUniTransferRequest;
import com.alipay.api.response.AlipayFundTransUniTransferResponse;
import com.zhuche.server.dto.request.withdraw.CreateWithDrawRequest;
import com.zhuche.server.dto.request.withdraw.RejectWithDrawRequest;
import com.zhuche.server.model.PayType;
import com.zhuche.server.model.Transaction;
import com.zhuche.server.model.TransactionStatus;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.TransactionRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import com.zhuche.server.util.TradeUtil;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
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

    @Transactional
    public List<Transaction> createAlipayWithdrawTransaction(CreateWithDrawRequest request) throws AlipayApiException {
        final User me = jwtUtil.getUser();
        me.setBalance( me.getBalance() - request.getAmount() );
        userRepository.save(me);
        transactionRepository.save(
            Transaction.builder()
                .user(me)
                .amount(-request.getAmount())
                .isWithDraw(true)
                .status(TransactionStatus.PROCESSING)
                .remark(request.getRemark())
                .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                .title("余额提现申请")
                .payType(PayType.ALIPAY)
                .balance(me.getBalance())
                .build()
        );
        return transactionService.getMyTransactions();
    }

    /**
     * 同意提现
     * @param id
     * @return
     * @throws AlipayApiException
     */
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
        transaction.setStatus(TransactionStatus.FINISHED);
        transaction.setOutBizNo(outBizNo);
        transactionRepository.save(transaction);

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

        return transactionRepository.save(transaction);
    }
}
