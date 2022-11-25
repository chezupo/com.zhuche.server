package com.zhuche.server.services;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.wechat.pay.contrib.apache.httpclient.WechatPayHttpClientBuilder;
import com.zhuche.server.dto.request.order.CreateOrderRequest;
import com.zhuche.server.dto.response.store.WechatPrepayResponse;
import com.zhuche.server.model.Order;
import com.zhuche.server.model.User;
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
import java.util.Arrays;
import java.util.Base64;
import java.util.Random;
import java.util.stream.Collectors;


@Service
@Slf4j
public class WeChatPayOrderService {

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

    @Autowired private JWTUtil jwtUtil;

    public Order createWechatOrder(Order newOrder, CreateOrderRequest request) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException, URISyntaxException {
        final User me = jwtUtil.getUser();
        final String openId = me.getWechatAccount().getOpenId();
        Path fileName = Path.of(privateKeyPath);
        String privateKeyContent = Files.readString(fileName);
        privateKeyContent = privateKeyContent.replaceAll("\\n", "").replace("-----BEGIN PRIVATE KEY-----", "").replace("-----END PRIVATE KEY-----", "");
        KeyFactory kf = KeyFactory.getInstance("RSA");
        PKCS8EncodedKeySpec keySpecPKCS8 = new PKCS8EncodedKeySpec(Base64.getDecoder().decode(privateKeyContent));
        PrivateKey privateKey = kf.generatePrivate(keySpecPKCS8);
        CloseableHttpClient httpClient = WechatPayHttpClientBuilder.create()
            .withMerchant(merchantId, merchantSerialNumber, privateKey)
            .withValidator(response -> true)
            .build();
        System.out.println(httpClient);

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
            .put("out_trade_no", newOrder.getOutTradeNo());
        int total = (int) (newOrder.getAmount() * 100);
        rootNode.putObject("amount")
            .put("total", total);
        rootNode.putObject("payer")
            .put("openid", openId);
        objectMapper.writeValue(bos, rootNode);
        httpPost.setEntity(new StringEntity(bos.toString("UTF-8"), "UTF-8"));
        CloseableHttpResponse response = httpClient.execute(httpPost);
        String bodyAsString = EntityUtils.toString(response.getEntity());
        System.out.println(bodyAsString);
        String prepayId =  JSON.parseObject(bodyAsString, WechatPrepayResponse.class).prepay_id;
        String timestamp = getTimestamp();
        String nonceStr = CreateNoncestr();
        String packageStr = "prepay_id=" + prepayId;
        // 签名
        String paySign = doRequestSign(privateKey,appId, timestamp, nonceStr, packageStr);
        String jsonString = String.format( "{ \"timeStamp\" : \"%s\", \"signType\" : \"%s\", \"package\" : \"%s\", \"nonceStr\": \"%s\", \"paySign\": \"%s\" }",
            timestamp,
            "RSA",
            packageStr,
            nonceStr,
            paySign
        );

        newOrder.setWechatPayToken(jsonString);
        return newOrder;
    }

    public static String getTimestamp() {
        long epochSecond = LocalDateTime.now().toEpochSecond(ZoneOffset.of("+8"));
        return String.valueOf(epochSecond);
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
}

