/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/16
 * Listen  MIT
 */

package com.zhuche.server.config;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.AlipayConfig;
import com.alipay.api.DefaultAlipayClient;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@Slf4j
public class AlipayClientConfig {
    @Value("${alipay.privateKey}")
    private String privateKey;

    @Value("${alipay.serverUrl}")
    private String serverUrl;

    @Value("${alipay.appid}")
    private String appid;

    @Value("${alipay.appCertPath}")
    private String appCertPath;

    @Value("${alipay.alipayPublicCertPath}")
    private String alipayPublicCertPath;

    @Value("${alipay.rootCertPath}")
    private String rootCertPath;

    @Bean
    public AlipayClient alipayClient() throws AlipayApiException {
        AlipayConfig certAlipayRequest = new AlipayConfig();
        final String CERT_PATH = ClassLoader.getSystemResource(appCertPath).getPath();
        final String ALIPAY_PUBLIC_CERT_PATH = ClassLoader.getSystemResource(alipayPublicCertPath).getPath();
        final String ALIPAY_ROOT_CERT_PATH = ClassLoader.getSystemResource(rootCertPath).getPath();
        certAlipayRequest.setServerUrl(serverUrl);
        certAlipayRequest.setAppId(appid);
        certAlipayRequest.setPrivateKey(privateKey);
        certAlipayRequest.setFormat("json");
        certAlipayRequest.setCharset("UTF-8");
        certAlipayRequest.setSignType("RSA2");
        certAlipayRequest.setAppCertPath(CERT_PATH); //应用公钥证书路径（app_cert_path 文件绝对路径）
        certAlipayRequest.setAlipayPublicCertPath(ALIPAY_PUBLIC_CERT_PATH); //支付宝公钥证书文件路径（alipay_cert_path 文件绝对路径）
        certAlipayRequest.setRootCertPath(ALIPAY_ROOT_CERT_PATH);  //支付宝CA根证书文件路径（alipay_root_cert_path 文件绝对路径）
        log.info("Loaded Alipay private key: {}", privateKey);

        return  new DefaultAlipayClient(certAlipayRequest);
    }

}
