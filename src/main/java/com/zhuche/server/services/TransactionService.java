package com.zhuche.server.services;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayTradeCreateRequest;
import com.alipay.api.response.AlipayTradeCreateResponse;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.request.transaction.CreateTopUpRequest;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.PayType;
import com.zhuche.server.model.Transaction;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.TransactionRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import com.zhuche.server.util.TradeUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class TransactionService {
    private final TransactionRepository transactionRepository;
    private final AlipayClient alipayClient;
    private String alipayTimeoutExpress  = "15d";
    private final JWTUtil jwtUtil;
    private final UserRepository userRepository;

    @Value("${alipay.alipayTopUpNoticeUrl}")
    private String alipayTopUpNoticeUrl;

    public TransactionService(TransactionRepository transactionRepository, AlipayClient alipayClient, JWTUtil jwtUtil, UserRepository userRepository) {
        this.transactionRepository = transactionRepository;
        this.alipayClient = alipayClient;
        this.jwtUtil = jwtUtil;
        this.userRepository = userRepository;
    }

    /**
     * 支付宝充值
     * @param query
     */
    public String createAlipayTopTradeOrder(CreateTopUpRequest query) throws AlipayApiException {
        final var me = jwtUtil.getUser();
        final var alipayAccount = me.getAlipayAccount();
        AlipayTradeCreateRequest request = new AlipayTradeCreateRequest();
        request.setNotifyUrl(alipayTopUpNoticeUrl);
        JSONObject bizContent = new JSONObject();
        bizContent.put("out_trade_no", TradeUtil.generateOutTradeNo());
        bizContent.put("total_amount", query.getAmount());
        bizContent.put("subject", "支付宝充值");
        bizContent.put("buyer_id", alipayAccount.getUserId());
        bizContent.put("timeout_express", alipayTimeoutExpress);
        bizContent.put("body", me.getId());
        request.setBizContent(bizContent.toString());
        AlipayTradeCreateResponse response = alipayClient.execute(request);
        if (response.isSuccess()) {
            return response.getTradeNo();
        } else {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, response.getMsg());
        }
    }

    @Transactional
    public void createAlipayTransaction(String out_trade_no, Long userId, String trade_no, double receipt_amount, String subject) {
        final Transaction transaction = transactionRepository.findByOutTradeNo(out_trade_no);
        if (transaction == null) {
            final User user = userRepository.findById(userId).get();
            user.setBalance(user.getBalance() + receipt_amount);
            userRepository.save(user);
            transactionRepository.save(
                Transaction.builder()
                    .user(user)
                    .alipayOutTradeNo(out_trade_no)
                    .title(subject)
                    .payType(PayType.ALIPAY)
                    .tradeNo(trade_no)
                    .amount(receipt_amount)
                    .build()
            );
        }
    }
}
