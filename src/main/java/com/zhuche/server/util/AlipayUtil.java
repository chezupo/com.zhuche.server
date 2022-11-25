package com.zhuche.server.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.parser.Feature;
import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipayEncrypt;
import com.alipay.api.internal.util.AlipaySignature;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
@Slf4j
public class AlipayUtil {
    @Value("${alipay.alipayAESKey}")
    private String decryptKey;

    @Value("${alipay.alipayPublicCertPath}")
    private String alipayPublicCertPath;

   public String decryptContentPhoneNumber(String encryptContent) throws Exception {
       final String ALIPAY_PUBLIC_CERT_PATH = alipayPublicCertPath;
       String alipayPublicKey = AlipaySignature.getAlipayPublicKey(ALIPAY_PUBLIC_CERT_PATH);
       String signType = "RSA2";
       String charset = "UTF-8";
       String encryptType = "AES";
       Map<String, String> openapiResult = JSON.parseObject(encryptContent,new TypeReference<Map<String, String>>() {}, Feature.OrderedField);
       String sign = openapiResult.get("sign");
       String content = openapiResult.get("response");
       //判断是否为加密内容
       boolean isDataEncrypted = !content.startsWith("{");
       boolean signCheckPass = false;
       //2. 验签
       String signContent = content;
       String signVeriKey = alipayPublicKey;
       if (isDataEncrypted) {
           signContent = "\"" + signContent + "\"";
       }
       try {
           signCheckPass = AlipaySignature.rsaCheck(signContent, sign, signVeriKey, charset, signType);

       } catch (AlipayApiException e) {
           log.info("Descript error: {}.", e);
           // 验签异常, 日志
       }
       if (!signCheckPass) {
           //验签不通过（异常或者报文被篡改），终止流程（不需要做解密）
           throw new Exception("验签失败");
       }
       //3. 解密
       String plainData = null;
       if (isDataEncrypted) {
           try {
               final var response = AlipayEncrypt.decryptContent(content, encryptType, decryptKey, charset);
               openapiResult = JSON.parseObject(response,new TypeReference<Map<String, String>>() {}, Feature.OrderedField);
               return openapiResult.get("mobile");
           } catch (AlipayApiException e) {
               //解密异常, 记录日志
               throw new Exception("解密异常");
           }
       }
       throw new Exception("解密异常");
   }
}
