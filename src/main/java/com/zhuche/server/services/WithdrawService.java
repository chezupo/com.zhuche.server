package com.zhuche.server.services;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayFundTransUniTransferRequest;
import com.alipay.api.response.AlipayFundTransUniTransferResponse;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
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
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class WithdrawService {
    @Autowired TransactionRepository transactionRepository;
    @Autowired JWTUtil jwtUtil;
    @Autowired UserRepository userRepository;
    @Autowired TransactionService transactionService;
    @Autowired AlipayClient alipayClient;

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
    public Transaction accessWithdraw(Long id) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final Transaction transaction = transactionRepository.findById(id).get();
        switch (transaction.getPayType()) {
            case ALIPAY -> {
                accessAlipayWithdraw(id);
            }
            case WECHAT -> {
                accessWechatWithdraw(id);
            }
        }

        return transaction;
    }

    /**
     * 商户号
     */
    @Value("${wx.pay.merchantId}")
    public String merchantId;

    @Value("${wx.appid}")
    public String appId;

    @Autowired WeChatPayOrderService weChatPayOrderService;

    @Transactional
    public Transaction accessWechatWithdraw(Long id) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final Transaction transaction = transactionRepository.findById(id).get();
        String openid = transaction.getUser().getWechatAccount().getOpenId();
        HttpPost httpPost = new HttpPost("https://api.mch.weixin.qq.com/v3/transfer/batches");
        httpPost.addHeader("Accept", "application/json");
        httpPost.addHeader("Content-type","application/json; charset=utf-8");
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectMapper objectMapper = new ObjectMapper();
        ObjectNode rootNode = objectMapper.createObjectNode();
        // 订单批次号
        String out_batch_no = TradeUtil.generateOutTradeNo();
        int total_amount = (int) (transaction.getAmount() * 100);
        rootNode.put("batch_name", "微信提现")
            .put("appid", appId)
            .put("out_batch_no", out_batch_no)
            .put("batch_remark", "微信提现")
            .put("total_amount", total_amount)
            .put("total_num", 1);

        String out_detail_no = TradeUtil.generateOutTradeNo();

        Map<String, Object> postMap = new HashMap<String, Object>();
        postMap.put("appid", appId);
        postMap.put("out_batch_no", out_batch_no);
        //该笔批量转账的名称
        postMap.put("batch_name", "测试转账");
        //转账说明，UTF8编码，最多允许32个字符
        postMap.put("batch_remark", "测试转账");
        //转账金额单位为“分”。 总金额
        postMap.put("total_amount", 100);
        //。转账总笔数
        postMap.put("total_num", 1);


        List<Map> list = new ArrayList<>();
        Map<String, Object> subMap = new HashMap<>(4);
        //商家明细单号
        subMap.put("out_detail_no",  out_detail_no);
        //转账金额
        subMap.put("transfer_amount", 100);
        //转账备注
        subMap.put("transfer_remark", "明细备注1");
        //用户在直连商户应用下的用户标示
        subMap.put("openid", openid);
//    subMap.put("user_name", RsaCryptoUtil.encryptOAEP(userName, x509Certificate));
        list.add(subMap);
        postMap.put("transfer_detail_list", list);
        String dataJson = JSON.toJSONString(postMap);
        httpPost.setEntity(new StringEntity(dataJson, "UTF-8"));
        CloseableHttpResponse response = weChatPayOrderService.getWechatClient().execute(httpPost);
        String bodyAsString = EntityUtils.toString(response.getEntity());

        return null;
    }

    /**
     * 同意支付宝提现申请
     * @param id
     * @return
     * @throws AlipayApiException
     */
    @Transactional
    public Transaction accessAlipayWithdraw(Long id) throws AlipayApiException {
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
