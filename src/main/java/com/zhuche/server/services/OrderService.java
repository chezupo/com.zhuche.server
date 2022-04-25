package com.zhuche.server.services;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayTradeCreateRequest;
import com.alipay.api.response.AlipayTradeCreateResponse;
import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.request.order.CreateOrderRequest;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.CarRepository;
import com.zhuche.server.repositories.OrderRepository;
import com.zhuche.server.repositories.StoreRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Predicate;
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
    private String alipayTimeoutExpress  = "15d";
    private final CarRepository carRepository;
    private final StoreRepository storeRepository;

    @Value("${alipay.alipayNoticeUrl}")
    private String alipayNoticeUrl;

    public OrderService(CarRepository carRepository, OrderRepository orderRepository, AlipayClient alipayClient, JWTUtil jwtUtil, StoreRepository storeRepository) {
        this.carRepository = carRepository;
        this.orderRepository = orderRepository;
        this.alipayClient = alipayClient;
        this.jwtUtil = jwtUtil;
        this.storeRepository = storeRepository;
    }

    public Order createAlipayOrder(CreateOrderRequest query) throws AlipayApiException {
        final var alipayUserId = jwtUtil.getUser().getAlipayAccount().getUserId();
        final var now = LocalDateTime.now();
        final Car car = carRepository.findById(query.getCarId()).get();
        final String outTradeNo = String.format(
            "%d%d%d%d%d%d%d",
            now.getYear(),
            now.getMonth().getValue(),
            now.getDayOfMonth(),
            now.getHour(),
            now.getMinute(),
            now.getSecond(),
            now.getNano()
        );
        double amount;
        amount = 0.01;
        String title = car.getName();
        var getDeposit= car.getDeposit();
        var rent = car.getRent();
        var handlingFee = car.getHandlingFee();
        Float waiverAmount = (float) 0;
        var insuranceFee = car.getInsuranceFee();
        Boolean isInsuranceFee = query.getIsInsurance();
        Store starStore = storeRepository.findById(query.getStartStoreId()).get();
        Store endStore = storeRepository.findById(query.getEndStoreId()).get();

        AlipayTradeCreateRequest request = new AlipayTradeCreateRequest();
        request.setNotifyUrl(alipayNoticeUrl);
        JSONObject bizContent = new JSONObject();
        bizContent.put("out_trade_no", outTradeNo);
        bizContent.put("total_amount", amount);
        bizContent.put("subject", title);
        bizContent.put("buyer_id", alipayUserId);
        bizContent.put("timeout_express", alipayTimeoutExpress);
        request.setBizContent(bizContent.toString());
        AlipayTradeCreateResponse response = alipayClient.execute(request);
        if(response.isSuccess()){
            final User me = jwtUtil.getUser();
            log.info("{}", response);
            Order newOrder = Order.builder()
                .alipayOutTradeNo(outTradeNo)
                .alipayTradeNo(response.getTradeNo())
                .title(title)
                .car(car)
                .amount(amount)
                .createAlipayAt(Date.from(now.atZone(ZoneId.systemDefault()).toInstant()))
                .alipayToken(response.getBody())
                .startTimeStamp(query.getStartTimeStamp())
                .endTimeStamp(query.getEndTimeStamp())
                .deposit(getDeposit)
                .rent(rent)
                .status(OrderStatus.PAYING)
                .startStore(starStore)
                .endStore(endStore)
                .user(me)
                .handlingFee(handlingFee)
                .waiverAmount(waiverAmount)
                .isInsurance(isInsuranceFee)
                .insuranceFee(insuranceFee)
                .payType(PayType.ALIPAY)
                .build();
            newOrder.setCover(car.getCover());
            return orderRepository.save(newOrder);
        } else {
            throw new MyRuntimeException(ExceptionCodeConfig.INTERIOR_ERROR_TYPE, response.getMsg());
        }
    }

    public List<Order> getMyOrders() {
        jwtUtil.getUser();
        Specification<Store> sf = (root, query, builder) -> {
            List<Predicate> maps = new ArrayList<>();
            final var me = jwtUtil.getUser();
            maps.add( builder.equal(root.get("user").get("id").as(Long.class), me.getId()));
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
        final var order = orderRepository.findByAlipayOutTradeNo(out_trade_no);
        order.setStatus(OrderStatus.CAR_PICKUP_IN_PROGRESS);
        this.orderRepository.save(order);
    }
}
