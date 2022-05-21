/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/15
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.qiniu.util.Auth;
import com.zhuche.server.dto.response.uploadToken.CreateTokenResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class UploadTokenService {

    @Value("${disk.qiniu.accessKey}")
    private String accessKey;

    @Value("${disk.qiniu.secretkey}")
    private String secretkey;

    @Value("${disk.qiniu.bucket}")
    private String bucket;

    @Value("${disk.qiniu.prefixUrl}")
    public String prefixUrl;

    public String getToken() {
         return Auth.create(accessKey, secretkey).uploadToken(bucket);
    }

    public CreateTokenResponse createToken() {
        String token = getToken();
        return CreateTokenResponse.builder()
            .accessToken(token)
            .prefixUrl(prefixUrl)
            .platForm("qiniu")
            .build();
    }
}
