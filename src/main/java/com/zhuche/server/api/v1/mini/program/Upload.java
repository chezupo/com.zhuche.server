package com.zhuche.server.api.v1.mini.program;

import com.qiniu.common.QiniuException;
import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.file.UploadBase64Request;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.UploadService;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController("miniProgramUploadToken")
@RequestMapping("/api/v1/miniProgram/")
@AllArgsConstructor
@Validated
public class Upload {
    private final UploadService uploadService;

    @PostMapping("/bash64File")
    @Permission( roles = { Role.ROLE_USER } )
    public UnityResponse upload(
        @RequestBody @Valid UploadBase64Request request
    ) throws QiniuException {
        final String url = uploadService.uploadBase64(request);
        return UnityResponse.builder()
            .data(url)
            .build();
    }

}
