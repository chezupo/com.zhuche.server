package com.zhuche.server.services;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.domain.AlipayFundAuthOrderAppFreezeModel;
import com.alipay.api.request.AlipayFundAuthOrderAppFreezeRequest;
import com.alipay.api.request.AlipayFundAuthOrderUnfreezeRequest;
import com.alipay.api.request.AlipayTradeCreateRequest;
import com.alipay.api.request.AlipayTradeRefundRequest;
import com.alipay.api.response.AlipayFundAuthOrderAppFreezeResponse;
import com.alipay.api.response.AlipayFundAuthOrderUnfreezeResponse;
import com.alipay.api.response.AlipayTradeCreateResponse;
import com.alipay.api.response.AlipayTradeRefundResponse;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.request.order.*;
import com.zhuche.server.dto.request.order.command.CreateOrderCommandRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.*;
import com.zhuche.server.util.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Predicate;
import javax.transaction.Transactional;
import javax.validation.Valid;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URISyntaxException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Service
@Slf4j
public class OrderService {
    private final OrderRepository orderRepository;
    private final AlipayClient alipayClient;
    private final JWTUtil jwtUtil;
    private final CarRepository carRepository;
    private final StoreRepository storeRepository;
    private final AuthUtil authUtil;
    private final PaginationUtil paginationUtil;
    private final UserCouponRepository userCouponRepository;
    private final UserRepository userRepository;
    private final CouponUtil couponUtil;
    private final CommentRepository commentRepository;
    private final TransactionRepository transactionRepository;
    private final ConfigurationService configurationService;

    private final WeChatPayOrderService weChatPayOrderService;

    @Value("${alipay.alipayNoticeUrl}")
    private String alipayNoticeUrl;

    @Value("${alipay.pid}")
    private String alipayPid;

    @Value("${alipay.alipayOvertimeNoticeUrl}")
    private String alipayOvertimeNoticeUrl;

    @Value("${alipay.alipayReletNoticeUrl}")
    private String alipayReletNoticeUrl;

    @Value("${alipay.alipayFreezeNoticeUrl}")
    private String alipayFreezeNoticeUrl;

    @Value("${orderPayExpiredDays}")
    private int orderPayExpiredDays;

    public OrderService(
        CarRepository carRepository,
        OrderRepository orderRepository,
        AlipayClient alipayClient,
        JWTUtil jwtUtil,
        StoreRepository storeRepository,
        AuthUtil authUtil,
        PaginationUtil paginationUtil,
        UserCouponRepository userCouponRepository,
        UserRepository userRepository,
        CouponUtil couponUtil,
        CommentRepository commentRepository,
        TransactionRepository transactionRepository,
        ConfigurationService configurationService,
        WeChatPayOrderService weChatPayOrderService) {
        this.carRepository = carRepository;
        this.orderRepository = orderRepository;
        this.alipayClient = alipayClient;
        this.jwtUtil = jwtUtil;
        this.storeRepository = storeRepository;
        this.authUtil = authUtil;
        this.paginationUtil = paginationUtil;
        this.userCouponRepository = userCouponRepository;
        this.userRepository = userRepository;
        this.couponUtil = couponUtil;
        this.commentRepository = commentRepository;
        this.transactionRepository = transactionRepository;
        this.configurationService = configurationService;
        this.weChatPayOrderService = weChatPayOrderService;
    }

    private Order createNewOrder(CreateOrderRequest query) {
        final var now = LocalDateTime.now();
        final Car car = carRepository.findById(query.getCarId()).get();
        final var dayCount = (query.getEndTimeStamp() - query.getStartTimeStamp() ) / 60 / 60 / 24 / 1000;
        double insuranceFee = query.getIsInsurance() ? car.getInsuranceFee() * dayCount : 0;// 驾无成费用
        double rent = car.getRent() * dayCount;// 租金
        double deposit = car.getDeposit(); // 押金
        double handlingFee = car.getHandlingFee(); // 手续费
        double amount = rent + handlingFee; // 总费用
        double waiverHandlingFee = 0; // 减免手续费
        double waiverRent = 0; // 减免的租金
        // 优惠卷减免
        if (query.getUserCouponId() != null) {
            final var userCoupon = userCouponRepository.findById(query.getUserCouponId()).get();
            final var err = couponUtil.getErrorReason(userCoupon);
            if (amount >= userCoupon.getMeetAmount() && err.length() == 0 ) {
                double couponAmount = userCoupon.getAmount();
                // 减免手续费用
                if (userCoupon.getIsWithServiceAmount()) {
                    if (couponAmount > handlingFee) {
                        couponAmount = couponAmount - handlingFee;
                        waiverHandlingFee += handlingFee;
                        handlingFee = 0;
                    } else {
                        handlingFee = handlingFee - couponAmount;
                        waiverHandlingFee += couponAmount;
                        couponAmount = 0;
                    }
                }
                // 减免租金
                if (userCoupon.getIsWithRent() && couponAmount > 0) {
                    if (couponAmount > rent) {
                        waiverRent = rent;
                        rent = 0;
                    } else {
                        waiverRent = couponAmount;
                        rent = rent - couponAmount;
                    }
                }
                userCouponRepository.deleteById(userCoupon.getId()); // 删除优惠删除
            }
        }
        // 合计
        amount = (Math.round( (rent + handlingFee) * 100 ) / 100.0);
        String title = car.getName() + "费用";
        Boolean isInsuranceFee = query.getIsInsurance();
        Store starStore = storeRepository.findById(query.getStartStoreId()).get();
        Store endStore = storeRepository.findById(query.getEndStoreId()).get();
        final User me = jwtUtil.getUser();
        final String outTradeNo = TradeUtil.generateOutTradeNo();
        Order newOrder = Order.builder()
            .title(title)
            .car(car)
            .insuranceFee(Math.round(insuranceFee * 100) / 100.0 )
            .rent(Math.round(rent * 100) / 100.0 )
            .deposit(Math.round(deposit * 100) / 100.0)
            .handlingFee(Math.round(handlingFee * 100) / 100.0)
            .amount(amount)
            .waiverHandlingFee(Math.round(waiverHandlingFee * 100) / 100.0)
            .waiverRent(Math.round(waiverRent * 100) / 100.0)
            .createAlipayAt(Date.from(now.atZone(ZoneId.systemDefault()).toInstant()))
            .createdAt(
                Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli()
            )
            .outTradeNo(outTradeNo)
            .startTimeStamp(query.getStartTimeStamp())
            .endTimeStamp(query.getEndTimeStamp())
            .remark(query.getRemark())
            .status(OrderStatus.PAYING)
            .startStore(starStore)
            .endStore(endStore)
            .user(me)
            .isInsurance(isInsuranceFee)
            .isRefund(false)
            .build();
        // 返点计算
        final User level1User = me.getUser();
        if (level1User != null) {
            var config = configurationService.getConfiguration();
            newOrder.setPromotionLevel1(config.getPromotionLevel1());
            newOrder.setPromotionLevel1User(level1User);
            final User level2User = level1User.getUser();
            if (level2User != null) {
                newOrder.setPromotionLevel2(config.getPromotionLevel2());
                newOrder.setPromotionLevel2User(level2User);
            }
        }
        newOrder.setCover(newOrder.getCar().getCover());
        // 如果租金为0，费用为0则直接标记为取车状态
        if (newOrder.getDeposit() == 0 && newOrder.getAmount() == 0) {
            newOrder.setStatus(OrderStatus.CAR_PICKUP_IN_PROGRESS);
        }
        return newOrder;
    }

    /**
     * 创建支付宝支付订单
     * @param query
     * @return
     * @throws AlipayApiException
     */
    @Transactional
    public Order createAlipayOrder(CreateOrderRequest query) throws AlipayApiException {
        Order newOrder = createNewOrder(query);
        // 支付宝订单号生成
        if (newOrder.getAmount() > 0) {
            generateAlipayTrade(newOrder, newOrder.getCar());
            newOrder.setPayType(PayType.ALIPAY);
        }

        return orderRepository.save(newOrder);
    }

    public List<Order> getMyOrders() {
        jwtUtil.getUser();
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            final var me = jwtUtil.getUser();
            maps.add( builder.equal(root.get("user").get("id").as(Long.class), me.getId()));
            maps.add( builder.equal(root.get("user").get("id").as(Long.class), me.getId()));
            maps.add(builder.isNull(root.get("deletedAt")));
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<javax.persistence.criteria.Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };

        return  orderRepository.findAll(sf);
    }

    /**
     * 支付宝订单完成支付
     * @param out_trade_no
     */
    public void alipayOrderFinished(String out_trade_no) {
        final var order = orderRepository.findByOutTradeNo(out_trade_no);
        order.setStatus(OrderStatus.CAR_PICKUP_IN_PROGRESS);
        order.setIsRefund(false);
        this.orderRepository.save(order);
    }

    /**
     * 获取订单分页数据
     * @param page
     * @param size
     * @param tradeNo
     * @return
     */
    public PageFormat getOrderPageData(Integer page, Integer size, String tradeNo) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Pageable pagingSort = PageRequest.of(page, size, Sort.by("id").descending());
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            // 不是管理员
            if (!authUtil.isAdmin()) {
                final var me = jwtUtil.getUser();
                maps.add(
                    builder.or(
                        builder.equal(root.get("startStore").get("admin").get("id").as(Long.class), me.getId()),
                        builder.equal(root.get("endStore").get("admin").get("id").as(Long.class), me.getId())
                    )
                );
            }
            if(tradeNo != null) {
                maps.add( builder.like(root.get("alipayOutTradeNo").as(String.class), "%" + tradeNo +  "%"));
            }
            maps.add( builder.isNotNull(root.get("id").as(Long.class)) );
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);

            List<javax.persistence.criteria.Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };
        var pageDate = orderRepository.findAll(sf, pagingSort);

        return this.paginationUtil.covertPageFormat(pageDate);
    }

    /**
     * 创建冻结订单
     * @param order
     * @return
     * @throws AlipayApiException
     */
    public Order createFreezeAlipayOrderForOrder(Order order) throws AlipayApiException {
        order.setUnfreezeAmount(order.getDeposit());
        AlipayFundAuthOrderAppFreezeRequest request = new AlipayFundAuthOrderAppFreezeRequest();
        AlipayFundAuthOrderAppFreezeModel model = new AlipayFundAuthOrderAppFreezeModel();
        model.setOrderTitle("保证金预授权冻结");
        var outRequestNo = TradeUtil.generateOutTradeNo();
        order.setOutRequestNo(outRequestNo);
        model.setOutOrderNo(outRequestNo);//替换为实际订单号
        model.setOutRequestNo(outRequestNo);//替换为实际请求单号，保证每次请求都是唯一的
        model.setPayeeUserId(alipayPid);//payee_user_id,Payee_logon_id不能同时为空
        model.setProductCode("PRE_AUTH_ONLINE");//PRE_AUTH_ONLINE为固定值，不要替换
        model.setAmount(String.valueOf(order.getDeposit()));
        model.setPayTimeout("15d");
        request.setBizModel(model);
        request.setNotifyUrl(alipayFreezeNoticeUrl);//异步通知地址，必填，该接口只通过该参数进行异步通知
        AlipayFundAuthOrderAppFreezeResponse response = alipayClient.sdkExecute(request);//注意这里是sdkExecute，可以获取签名参数
        if(response.isSuccess()){
            order.setAuthBody(response.getBody());
            order.setAuthNo(response.getAuthNo());
            order.setIsUnfreeze(true);
            return order;
        } else {
            throw  new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "租金预授权生成失败");
        }
    }

    /**
     * 支付宝冻结通知处理
     */
    public void alipayFreezeOrderFinished(String outRequestNo, String authNo) {
        final Order order = orderRepository.findByOutRequestNo(outRequestNo);
        if (order == null) {
            return ;
        }
        if (order.getStatus() == OrderStatus.CREDITING) {
            order.setAuthNo(authNo);
            if (order.getAmount() == 0 ) {
                order.setStatus(OrderStatus.CAR_PICKUP_IN_PROGRESS);
            } else {
                order.setStatus(OrderStatus.PAYING);
            }
            order.setFreezeType(PayType.ALIPAY);
            order.setIsUnfreeze(false);
            orderRepository.save(order);
        }
    }

    public Order getOrderById(Long id) {
        return orderRepository.findById(id).get();
    }

    /**
     * 取消订单
     * @param id
     * @return
     */
    public Order cancelOrderById(Long id) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final Order order = orderRepository.findById(id).get();
        // 未取车状态且可取消状态
        List<OrderStatus> notPickedUpCarStatus = List.of(OrderStatus.CREDITING, OrderStatus.PAYING, OrderStatus.CAR_PICKUP_IN_PROGRESS);
        if (notPickedUpCarStatus.contains(order.getStatus())) {
            // 支付宝解冻
//            if (order.getFreezeType() == PayType.ALIPAY && !order.getIsUnfreeze()) {
//                unfreezeAlipayOrder(order);
//                order.setIsUnfreeze(true);
//                orderRepository.save(order);
//            }
            if (!order.getIsRefund()) {
                switch (order.getPayType()) {
                    case ALIPAY :
                        // 支付宝退款
                        alipayRefund(order);
                        break;
                    case WECHAT:
                        // 微信退款
                        weChatPayOrderService.refund(order);
                        break;
                }
                order.setIsRefund(true);
                orderRepository.save(order);
            }
            // 标记订单为取消
            order.setStatus(OrderStatus.CANCELED);
            return orderRepository.save(order);
//            if (order.getIsRefund() && order.getIsUnfreeze()) {
//                order.setStatus(OrderStatus.CANCELED);
//                return orderRepository.save(order);
//            }
        }
        throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "不能取消");
    }

    // 解冻支付宝订单
    private void unfreezeAlipayOrder(Order order) throws AlipayApiException {
        AlipayFundAuthOrderUnfreezeRequest request = new AlipayFundAuthOrderUnfreezeRequest();
        JSONObject bizContent = new JSONObject();
        bizContent.put("auth_no",order.getAuthNo());
        bizContent.put("out_request_no", order.getOutRequestNo());
        bizContent.put("amount", order.getUnfreezeAmount() );
        bizContent.put("remark","订单取消解冻全部资金");
        JSONObject extraParam = new JSONObject();
        JSONObject unfreezeBizInfo = new JSONObject();
        unfreezeBizInfo.put("bizComplete",true);
        extraParam.put("unfreezeBizInfo",unfreezeBizInfo);
        bizContent.put("extra_param",extraParam);
        request.setBizContent(bizContent.toString());
        AlipayFundAuthOrderUnfreezeResponse response = alipayClient.certificateExecute(request);
        if (!response.isSuccess()) {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "解冻资金失败");
        }
    }

    /**
     * 支付宝退款
     * @param order
     */
    private void alipayRefund(Order order) throws AlipayApiException {
        AlipayTradeRefundRequest request = new AlipayTradeRefundRequest();
        JSONObject bizContent = new JSONObject();
        bizContent.put("trade_no", order.getAlipayTradeNo());
        bizContent.put("refund_amount", order.getAmount());
        request.setBizContent(bizContent.toString());
        AlipayTradeRefundResponse response = alipayClient.certificateExecute(request);
        if(!response.isSuccess()){
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "支付宝退款失败");
        }
    }

    /**
     * 生成支付宝交易订单
     * @param order
     * @param car
     */
    private void generateAlipayTrade(Order order, Car car) throws AlipayApiException {
        final var alipayUserId = jwtUtil.getUser().getAlipayAccount().getUserId();
        String title = order.getTitle() + "费用";
        AlipayTradeCreateRequest request = new AlipayTradeCreateRequest();
        request.setNotifyUrl(alipayNoticeUrl);
        JSONObject bizContent = new JSONObject();
        bizContent.put("out_trade_no", order.getOutTradeNo());
        bizContent.put("total_amount", order.getAmount());
        bizContent.put("subject", title);
        bizContent.put("buyer_id", alipayUserId);
        bizContent.put("timeout_express", orderPayExpiredDays + "d");
        request.setBizContent(bizContent.toString());
        AlipayTradeCreateResponse response = alipayClient.certificateExecute(request);
        if (response.isSuccess()) {
            order.setAlipayTradeNo(response.getTradeNo());
            order.setAlipayToken(response.getBody());
        } else {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, response.getMsg());
        }
    }

    /**
     * 确定取车
     * @param id
     * @param request
     * @return
     */
    public Order confirmPickUpCarOrder(Long id, @Valid ConfirmOrderRequest request) {
        final Order order = orderRepository.findById(id).get();
        order.setStatus(OrderStatus.USING);
        order.setContract(request.getContract());

        return orderRepository.save(order);
    }

    /**
     * 设置订单状态为还车中
     * @param id
     * @return
     */
    public Order setOrderStatusToReturning(Long id) {
        final Order order = orderRepository.findById(id).get();
        order.setStatus(OrderStatus.RETURNING);

        return orderRepository.save(order);
    }

    /**
     * 完成订单
     * @param id
     * @return
     */
    @Transactional
    public Order finishedOrder(Long id) {
        final Order order = orderRepository.findById(id).get();
        order.setStatus(OrderStatus.FINISHED);
        // 订单佣金结算
        if (order.getPromotionLevel1User() != null) {
            calculateOrderCommission(order.getPromotionLevel1User(), order.getPromotionLevel1(), order.getAmount() * 0.01 , "订单一级反佣");
        }
        if (order.getPromotionLevel2User() != null) {
            calculateOrderCommission(order.getPromotionLevel2User(), order.getPromotionLevel2(), order.getAmount() * 0.01, "订单二级反佣");
        }

        return orderRepository.save(order);
    }

    /**
     * 计算订单佣金
     * @param user
     * @param rate
     */
    private void calculateOrderCommission(User user, BigDecimal rate, Double amount, String subject) {
        BigDecimal commission = new BigDecimal(amount);
        commission = commission.multiply(rate);
        commission = commission.divide(BigDecimal.valueOf(100));
        if (user.getCommission() == null) {
            user.setCommission(BigDecimal.valueOf(0));
        }
        if (user.getBalance() == null) {
            user.setBalance(0.00);
        }
        user.setCommission(
            user.getCommission().add(commission)
        );
        if (amount > 0) {
            user.setBalance(user.getBalance() + amount);
            int balance = (int)(user.getBalance()* 100);
            transactionRepository.save(
                Transaction
                    .builder()
                    .title(subject)
                    .balance(balance)
                    .amount(amount )
                    .payType(PayType.ALIPAY)
                    .isWithDraw(false)
                    .status(TransactionStatus.FINISHED)
                    .transactionType(TransactionType.COMMISSION)
                    .outTradeNo("")
                    .tradeNo("")
                    .user(user)
                    .remark("")
                    .build()
            );
        }

        userRepository.save(user);
    }

    /**
     * 创建订单评价
     * @param id
     * @param request
     * @return
     */
    public Comment createCommand(Long id, CreateOrderCommandRequest request) {
        final Order order = orderRepository.findById(id).get();
        final User me = jwtUtil.getUser();
        return commentRepository.save(
            Comment.builder()
                .order(order)
                .car(order.getCar())
                .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                .store(order.getStartStore())
                .content(request.getContent())
                .user(me)
                .rate(request.getRate())
                .build()
        );
    }

    /**
     * 解冻订单
     * @param id
     * @return
     */
    public Order unfreezeOrder(Long id) throws AlipayApiException {
        final Order order = orderRepository.findById(id).get();
        AlipayFundAuthOrderUnfreezeRequest request = new AlipayFundAuthOrderUnfreezeRequest();
        JSONObject bizContent = new JSONObject();
        bizContent.put("auth_no",order.getAuthNo());
        bizContent.put("out_request_no", order.getOutRequestNo());
        bizContent.put("amount", order.getUnfreezeAmount() );
        bizContent.put("remark", String.format("%s订单成功-解冻余下全部资金", order.getTitle()));
        JSONObject extraParam = new JSONObject();
        JSONObject unfreezeBizInfo = new JSONObject();
        unfreezeBizInfo.put("bizComplete",true);
        extraParam.put("unfreezeBizInfo",unfreezeBizInfo);
        bizContent.put("extra_param",extraParam);
        request.setBizContent(bizContent.toString());
        AlipayFundAuthOrderUnfreezeResponse response = alipayClient.certificateExecute(request);
        if (!response.isSuccess()) {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "解冻资金失败");
        }
        order.setUnfreezeAmount(0);

        return orderRepository.save(order);
    }

    /**
     * 补交超时费用
     * @param id
     * @return
     */
    public String createExpiredTrade(Long id) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final Order order = orderRepository.findById(id).get();
        final User me = jwtUtil.getUser();
        final Double amount = Math.round(order.getExpiredFee() * 100 ) / 100.0;
        final var title = String.format("%s-用车超时费用", order.getTitle());
        AlipayTradeCreateRequest request = new AlipayTradeCreateRequest();
        double days = order.getExpiredFee() / order.getCar().getRent();
        final RenewalOrder renewalOrder = RenewalOrder.builder()
            .orderId(order.getId())
            .isOk(false)
            .days(Double.valueOf(days).longValue())
            .total((int )(amount * 100))
            .outTradeNo(TradeUtil.generateOutTradeNo())
            .build();

        if (order.getPayType() == PayType.WECHAT) {
            return weChatPayOrderService.createExpiredTrade(renewalOrder);
        }

        request.setNotifyUrl(alipayOvertimeNoticeUrl);
        JSONObject bizContent = new JSONObject();
        bizContent.put("out_trade_no", TradeUtil.generateOutTradeNo());
        bizContent.put("total_amount", amount);
        bizContent.put("subject", title);
        bizContent.put("buyer_id", me.getAlipayAccount().getUserId());
        bizContent.put("timeout_express", orderPayExpiredDays + "d");
        bizContent.put("body", JSON.toJSONString(
            AlipayOvertimeTradeBody
                .builder()
                .orderId(order.getId())
                .days(order.getExpiredDays())
                .userId(me.getId())
                .build()
        ));
        request.setBizContent(bizContent.toString());
        AlipayTradeCreateResponse response = alipayClient.certificateExecute(request);
        if (response.isSuccess()) {
            return response.getTradeNo();
        } else {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "支付宝调用失败");
        }
    }

    /**
     * 支付超时费用并还车
     * @param total_amount
     * @param subject
     * @param trade_no
     */
    @Transactional
    public void payOvertimeFeeAndReturning(AlipayOvertimeTradeBody body, Number total_amount, String subject, String out_trade_no, String trade_no) {
        final Order order = orderRepository.findById(body.getOrderId()).get();
        if (order.getStatus() == OrderStatus.OVERTIME) {
            setOrderStatusToReturning(body.getOrderId());
            final User user = userRepository.findById(body.getUserId()).get();
            int balance = (int)(user.getBalance()* 100);
            var transaction = transactionRepository.save(
                Transaction
                    .builder()
                    .title(subject)
                    .balance(balance)
                    .amount(-total_amount.doubleValue())
                    .payType(PayType.ALIPAY)
                    .isWithDraw(false)
                    .status(TransactionStatus.FINISHED)
                    .outTradeNo(out_trade_no)
                    .tradeNo(trade_no)
                    .user(order.getUser())
                    .remark("")
                    .build()
            );
            log.info("overtime transaction: {}", transaction);
        }
    }

    /**
     * 续租
     * @param id
     * @param updateOrderReletRequest
     * @return
     * @throws AlipayApiException
     */
    public String createReletTrade(Long id, UpdateOrderReletRequest updateOrderReletRequest) throws AlipayApiException, IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final Order order = orderRepository.findById(id).get();
        final double amount = Math.round(
            order.getCar().getRent() * updateOrderReletRequest.getDays() * 100
        ) / 100.0;
        final var title = String.format("%s-租车续费(%s天)", order.getTitle(), updateOrderReletRequest.getDays());
        final RenewalOrder renewalOrder = RenewalOrder.builder()
            .orderId(order.getId())
            .days(updateOrderReletRequest.getDays())
            .outTradeNo(TradeUtil.generateOutTradeNo())
            .isOk(false)
            .total((int)(amount * 100))
            .build();
        final User me = jwtUtil.getUser();
        if (order.getPayType() == PayType.WECHAT ) {
            // 微信续租
            return weChatPayOrderService.renewalOrder(renewalOrder, title, me);
        }

        AlipayTradeCreateRequest request = new AlipayTradeCreateRequest();
        request.setNotifyUrl(alipayReletNoticeUrl);
        JSONObject bizContent = new JSONObject();
        bizContent.put("out_trade_no", TradeUtil.generateOutTradeNo());
        bizContent.put("total_amount", amount);
        bizContent.put("subject", title);
        bizContent.put("buyer_id", me.getAlipayAccount().getUserId());
        bizContent.put("timeout_express", orderPayExpiredDays + "d");
        bizContent.put("body", JSON.toJSONString(
            AlipayOrderRelatBody
                .builder()
                .orderId(order.getId())
                .days(updateOrderReletRequest.getDays())
                .amount(amount)
                .build()
        ));
        request.setBizContent(bizContent.toString());
        AlipayTradeCreateResponse response = alipayClient.certificateExecute(request);
        if (response.isSuccess()) {
            return response.getTradeNo();
        } else {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, "支付宝调用失败");
        }
    }

    @Transactional
    public void relateOrder(String body, String subject, String trade_no, String out_trade_no) {
        var data = JSON.parseObject(body, AlipayOrderRelatBody.class);
        var order = orderRepository.findById(data.getOrderId()).get();
        order.setEndTimeStamp( order.getEndTimeStamp() + data.getDays() * 60 * 60 * 24 * 1000 );
        orderRepository.save(order);
        int balance = (int)(order.getUser().getBalance() * 100);
        transactionRepository.save(
            Transaction.builder()
                .remark("")
                .user(order.getUser())
                .status( TransactionStatus.FINISHED )
                .balance(balance)
                .amount(-data.getAmount())
                .title(subject)
                .payType(PayType.ALIPAY)
                .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                .outTradeNo(out_trade_no)
                .tradeNo(trade_no)
                .build()
        );
    }

    /**
     * 生成微信订单
     * @param query
     * @return
     * @throws IOException
     * @throws NoSuchAlgorithmException
     * @throws InvalidKeySpecException
     */
    public Order createWechatOrder(CreateOrderRequest query) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException, URISyntaxException {
        Order newOrder = createNewOrder(query);
        // 支付宝订单号生成
        if (newOrder.getAmount() > 0) {
            weChatPayOrderService.createWechatOrder(newOrder, query);
            newOrder.setPayType(PayType.WECHAT);
        }

        return orderRepository.save(newOrder);
    }

    public void deleteOrderById(Long id) {
        Order order = orderRepository.findById(id).get();
        order.setDeletedAt(LocalDateTime.now());
        orderRepository.save(order);
    }

    /**
     * 续租
     * @param id
     * @param updateOrderReletRequest
     * @return
     */
    public Order renewingOrder(Long id, UpdateOrderReletRequest updateOrderReletRequest) {
        Order order = orderRepository.findById(id).get();
        order.setEndTimeStamp( order.getEndTimeStamp() + updateOrderReletRequest.getDays() * 24 * 60 * 60 * 1000);
        orderRepository.save(order);

        return order;
    }
}
