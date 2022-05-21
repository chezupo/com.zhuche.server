package com.zhuche.server.services;

import com.qiniu.common.QiniuException;
import com.qiniu.util.Base64;
import com.zhuche.server.dto.request.file.UploadBase64Request;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;
import com.qiniu.storage.Configuration;
import com.qiniu.http.Response;

import javax.validation.Valid;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Service
@AllArgsConstructor
public class UploadService {
    private final UploadTokenService uploadTokenService;

    public String uploadBase64(@Valid UploadBase64Request request) throws QiniuException {
        byte[] decodedByte = Base64.decode(request.getFile(), 0);
        Configuration cfg = new Configuration();
        UploadManager uploadManager = new UploadManager(cfg);
        var key = Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli() + "";
        Response r = uploadManager.put(decodedByte, key, uploadTokenService.getToken());

        return uploadTokenService.prefixUrl + "/" + key;
    }
}
