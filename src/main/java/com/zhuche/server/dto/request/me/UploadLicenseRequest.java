package com.zhuche.server.dto.request.me;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UploadLicenseRequest {
    private String idCarFrontal;

    private String idCarBack;

    private String driverLicense;
}
