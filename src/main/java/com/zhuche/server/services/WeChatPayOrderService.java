package com.zhuche.server.services;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.wechat.pay.contrib.apache.httpclient.WechatPayHttpClientBuilder;
import com.zhuche.server.dto.request.order.CreateOrderRequest;
import com.zhuche.server.dto.response.store.WechatPrepayResponse;
import com.zhuche.server.model.Order;
import com.zhuche.server.model.PayType;
import com.zhuche.server.model.RenewalOrder;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.RenewalOrderRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.Base64Utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.*;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Base64;
import java.util.Date;
import java.util.Random;
import java.util.stream.Collectors;


@Service
@Slf4j
public class WeChatPayOrderService {
    /**
     * 支付支付期限
      */
    @Value("${orderPayExpiredDays}")
    private int orderPayExpiredDays;

    /**
     * 商户号
     */
    @Value("${wx.pay.merchantId}")
    public String merchantId;

    /**
     * 商户API私钥路径
     */
    @Value("${wx.pay.privateKeyPath}")
    public String privateKeyPath;
    /**
     * 商户证书序列号
     */
    @Value("${wx.pay.merchantSerialNumber}")
    public String merchantSerialNumber;
    /**
     * 微信支付平台证书路径
     */
    @Value("${wx.pay.wechatPayCertificatePath}")
    public String wechatPayCertificatePath;
    @Value("${wx.appid}")
    public String appId;

    @Value("${wx.pay.notifyUrl}")
    public String notifyUrl;

    @Value("${wx.pay.renewalNotifyUrl}")
    public String renewalNotifyUrl;

    @Value("${wx.pay.overtimeNoticeUrl}")
    public String overtimeNoticeUrl;

    @Autowired private JWTUtil jwtUtil;

    @Autowired private RenewalOrderRepository renewalOrderRepository;

    PrivateKey getPrivateKey() throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        Path fileName = Path.of(privateKeyPath);
        String privateKeyContent = Files.readString(fileName);
        privateKeyContent = privateKeyContent.replaceAll("\\n", "").replace("-----BEGIN PRIVATE KEY-----", "").replace("-----END PRIVATE KEY-----", "");
        KeyFactory kf = KeyFactory.getInstance("RSA");
        PKCS8EncodedKeySpec keySpecPKCS8 = new PKCS8EncodedKeySpec(Base64.getDecoder().decode(privateKeyContent));

        return kf.generatePrivate(keySpecPKCS8);
    }
    CloseableHttpClient getWechatClient() throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        CloseableHttpClient httpClient = WechatPayHttpClientBuilder.create()
            .withMerchant(merchantId, merchantSerialNumber, getPrivateKey())
            .withValidator(response -> true)
            .build();
        System.out.println(httpClient);

        return httpClient;
    }

    public Order createWechatOrder(Order newOrder, CreateOrderRequest request) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException, URISyntaxException {
        final User me = jwtUtil.getUser();
        final String openId = me.getWechatAccount().getOpenId();

        HttpPost httpPost = new HttpPost("https://api.mch.weixin.qq.com/v3/pay/transactions/jsapi");
        httpPost.addHeader("Accept", "application/json");
        httpPost.addHeader("Content-type","application/json; charset=utf-8");
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectMapper objectMapper = new ObjectMapper();

        ObjectNode rootNode = objectMapper.createObjectNode();
        rootNode.put("mchid",merchantId)
            .put("appid", appId)
            .put("description", newOrder.getTitle())
            .put("notify_url", notifyUrl)
            .put("out_trade_no", newOrder.getOutTradeNo())
        .put("time_expire", getExpiredDatetime());
        int total = (int) (newOrder.getAmount() * 100);
        rootNode.putObject("amount")
            .put("total", total);
        rootNode.putObject("payer")
            .put("openid", openId);
        String jsonString = wechatRequest(objectMapper, bos, rootNode, httpPost);
        newOrder.setWechatPayToken(jsonString);
        return newOrder;
    }

    public static String getTimestamp() {
        long epochSecond = LocalDateTime.now().toEpochSecond(ZoneOffset.of("+8"));
        return String.valueOf(epochSecond);
    }

    /**
     * 过期时长
     * @return
     */
    public String getExpiredDatetime() {
//        DateTimeFormatter FORMATTER = DateTimeFormatter.ISO_OFFSET_DATE_TIME;
//        final String result = ZonedDateTime.now().plusDays(orderPayExpiredDays).format(FORMATTER);
        final var dateTime = ZonedDateTime.now().plusDays(orderPayExpiredDays);

        final String result = String.format("%s-%s-%sT%s:%s:%s+08:00",
            dateTime.getYear(),
            formDateTimeNumberToString(dateTime.getMonthValue()),
            formDateTimeNumberToString(dateTime.getDayOfMonth()),
            formDateTimeNumberToString(dateTime.getHour()),
            formDateTimeNumberToString(dateTime.getMonthValue()),
            formDateTimeNumberToString(dateTime.getSecond())
        );
        log.info("{}", result);

        return result;
    }

    private String formDateTimeNumberToString(int value) {
        return value >= 10 ? value + "" : String.format("0%d", value);
    }


    /**
     * 字符串
     * @return
     */
    public static String CreateNoncestr() {
        String chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder res = new StringBuilder();
        for (int i = 0; i < 16; i++) {
            Random rd = new Random();
            res.append(chars.charAt(rd.nextInt(chars.length() - 1)));
        }
        return res.toString();
    }




    private static final String BC_PROVIDER = "BC";

    public static String doRequestSign(PrivateKey merchantPrivateKey, String... orderedComponents) {
        try {
            // 商户私钥
            Signature signer = Signature.getInstance("SHA256withRSA", BC_PROVIDER);
            signer.initSign(merchantPrivateKey);
            final String signatureStr = createSign(true, orderedComponents);
            signer.update(signatureStr.getBytes(StandardCharsets.UTF_8));
            return Base64Utils.encodeToString(signer.sign());
        } catch (InvalidKeyException e) {
            log.error("InvalidKeyException: {}", e);
        } catch (SignatureException e) {
            log.error("SignatureException: {}", e);
        } catch (NoSuchProviderException e) {
            log.error("NoSuchProviderException: {}", e);
        } catch (NoSuchAlgorithmException e) {
            log.error("NoSuchAlgorithmException: {}", e);
        }
        return null;

    }

    private static String createSign(boolean newLine, String... components) {
        String suffix = newLine ? "\n" : "";
        return Arrays.stream(components).collect(Collectors.joining("\n", "", suffix));

    }

    /**
     * 微信支付退款
     * @param order
     */
    public void refund(Order order) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        HttpPost httpPost = new HttpPost("https://api.mch.weixin.qq.com/v3/refund/domestic/refunds");
        httpPost.addHeader("Accept", "application/json");
        httpPost.addHeader("Content-type","application/json; charset=utf-8");
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectMapper objectMapper = new ObjectMapper();

        String wechat_out_refund_no = ((Long) new Date().getTime()).toString();
        ObjectNode rootNode = objectMapper.createObjectNode();
        rootNode.put("transaction_id", order.getWechatTransactionId())
            .put("out_refund_no", wechat_out_refund_no);
        int total = (int) (order.getAmount() * 100);
        rootNode.putObject("amount")
            .put("refund", total) // 退款金额
            .put("total", total) // 原订单金额
            .put("currency", "CNY"); // 币种：人民币
        objectMapper.writeValue(bos, rootNode);
        httpPost.setEntity(new StringEntity(bos.toString("UTF-8"), "UTF-8"));
        CloseableHttpResponse response = getWechatClient().execute(httpPost);
        String bodyAsString = EntityUtils.toString(response.getEntity());
        System.out.println(bodyAsString);
        order.setWechatOutRefundNo(wechat_out_refund_no);
    }

    /**
     * 微信支付续费
     *
     * @param order
     * @param title
     * @param me
     * @return
     */
    public String renewalOrder(RenewalOrder order, String title, User me) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        order.setPayType(PayType.WECHAT);
        HttpPost httpPost = new HttpPost("https://api.mch.weixin.qq.com/v3/pay/transactions/jsapi");
        httpPost.addHeader("Accept", "application/json");
        httpPost.addHeader("Content-type","application/json; charset=utf-8");
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectMapper objectMapper = new ObjectMapper();
        ObjectNode rootNode = objectMapper.createObjectNode();
        rootNode.put("mchid",merchantId)
            .put("appid", appId)
            .put("description", title)
            .put("notify_url", renewalNotifyUrl)
            .put("out_trade_no", order.getOutTradeNo())
            .put("time_expire", getExpiredDatetime());
        rootNode.putObject("amount")
            .put("total", order.getTotal());
        rootNode.putObject("payer")
            .put("openid", me.getWechatAccount().getOpenId());
        String jsonString = wechatRequest(objectMapper, bos, rootNode, httpPost);
        order.setPayToken(jsonString);
        renewalOrderRepository.save(order);
        return order.getPayToken();
    }

    /**
     * 订单逾期补交
     * @param renewalOrder
     * @return
     * @throws IOException
     * @throws NoSuchAlgorithmException
     * @throws InvalidKeySpecException
     */
    public String createExpiredTrade(RenewalOrder renewalOrder) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        final User me = jwtUtil.getUser();
        renewalOrder.setPayType(PayType.WECHAT);
        HttpPost httpPost = new HttpPost("https://api.mch.weixin.qq.com/v3/pay/transactions/jsapi");
        httpPost.addHeader("Accept", "application/json");
        httpPost.addHeader("Content-type","application/json; charset=utf-8");
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectMapper objectMapper = new ObjectMapper();
        ObjectNode rootNode = objectMapper.createObjectNode();
        rootNode.put("mchid",merchantId)
            .put("appid", appId)
            .put("description", "过期费用补交")
            .put("notify_url", overtimeNoticeUrl)
            .put("out_trade_no",renewalOrder.getOutTradeNo())
            .put("time_expire", getExpiredDatetime());
        rootNode.putObject("amount")
            .put("total",renewalOrder.getTotal());
        rootNode.putObject("payer")
            .put("openid", me.getWechatAccount().getOpenId());
        String jsonString = wechatRequest(objectMapper, bos, rootNode, httpPost);
        renewalOrder.setPayToken(jsonString);
        renewalOrderRepository.save(renewalOrder);

        return jsonString;
    }


    /**
     * 发起请求
     * @param objectMapper
     * @param bos
     * @param rootNode
     * @param httpPost
     * @return
     * @throws IOException
     * @throws NoSuchAlgorithmException
     * @throws InvalidKeySpecException
     */
    private String wechatRequest(ObjectMapper objectMapper, ByteArrayOutputStream bos, ObjectNode rootNode, HttpPost httpPost) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException {
        objectMapper.writeValue(bos, rootNode);
        httpPost.setEntity(new StringEntity(bos.toString("UTF-8"), "UTF-8"));
        CloseableHttpResponse response = getWechatClient().execute(httpPost);
        String bodyAsString = EntityUtils.toString(response.getEntity());
        System.out.println(bodyAsString);
        String prepayId =  JSON.parseObject(bodyAsString, WechatPrepayResponse.class).prepay_id;
        String timestamp = getTimestamp();
        String nonceStr = CreateNoncestr();
        String packageStr = "prepay_id=" + prepayId;
        // 签名
        String paySign = doRequestSign(getPrivateKey(),appId, timestamp, nonceStr, packageStr);
        String jsonString = String.format( "{ \"timeStamp\" : \"%s\", \"signType\" : \"%s\", \"package\" : \"%s\", \"nonceStr\": \"%s\", \"paySign\": \"%s\" }",
            timestamp,
            "RSA",
            packageStr,
            nonceStr,
            paySign
        );

        return jsonString;
    }
}

