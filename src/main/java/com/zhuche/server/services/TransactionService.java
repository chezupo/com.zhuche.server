package com.zhuche.server.services;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayTradeCreateRequest;
import com.alipay.api.response.AlipayTradeCreateResponse;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.request.transaction.CreateTopUpRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.TransactionRepository;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.JWTUtil;
import com.zhuche.server.util.PaginationUtil;
import com.zhuche.server.util.TradeUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.transaction.Transactional;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
public class TransactionService {
    private final TransactionRepository transactionRepository;
    private final AlipayClient alipayClient;
    private String alipayTimeoutExpress  = "15d";
    private final JWTUtil jwtUtil;
    private final UserRepository userRepository;
    private final PaginationUtil paginationUtil;

    @Value("${alipay.alipayTopUpNoticeUrl}")
    private String alipayTopUpNoticeUrl;

    public TransactionService(TransactionRepository transactionRepository, AlipayClient alipayClient, JWTUtil jwtUtil, UserRepository userRepository, PaginationUtil paginationUtil) {
        this.transactionRepository = transactionRepository;
        this.alipayClient = alipayClient;
        this.jwtUtil = jwtUtil;
        this.userRepository = userRepository;
        this.paginationUtil = paginationUtil;
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
        AlipayTradeCreateResponse response = alipayClient.certificateExecute(request);
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
                    .outTradeNo(out_trade_no)
                    .title(subject)
                    .isWithDraw(false)
                    .status(TransactionStatus.FINISHED)
                    .balance(user.getBalance())
                    .payType(PayType.ALIPAY)
                    .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                    .tradeNo(trade_no)
                    .amount(receipt_amount)
                    .build()
            );
        }
    }

    public PageFormat getPageData(Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        final var pageData = transactionRepository.findAll(pagingSort);

        return paginationUtil.covertPageFormat(pageData);
    }

    public List<Transaction> getMyTransactions() {
        final User me = jwtUtil.getUser();
        final List<Transaction> transactionList  = transactionRepository.findAllByUserId(me.getId());
        return transactionList;
    }

    public PageFormat getWithdrawData(Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);

        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            maps.add( builder.equal(root.get("status").as(TransactionStatus.class), TransactionStatus.PROCESSING) );
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };


        final var pageData = transactionRepository.findAll(sf, pagingSort );

        return paginationUtil.covertPageFormat(pageData);
    }
}
