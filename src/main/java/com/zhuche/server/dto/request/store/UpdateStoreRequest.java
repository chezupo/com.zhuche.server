package com.zhuche.server.dto.request.store;

import com.zhuche.server.dto.request.guid.CreateGuid;
import com.zhuche.server.validators.area.code.AreaCodeMustBeExisted;
import com.zhuche.server.validators.store.ServicePhoneFormatValidator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class UpdateStoreRequest {
    private List<String> banners;

    @NotBlank
    @AreaCodeMustBeExisted(message = "区号: ${validatedValue} 不存在.")
    private String areaCode;

    @NotBlank(message = "地址不能为空")
    private String address;

    @NotNull(message = "经度不能为空")
    // todo 验证经度的格式
    private Float lng;

    // todo 验证纬度的格式
    @NotNull(message = "纬度不能为空")
    private Float lat;

    @NotBlank
    // todo 验证时间格式字符串格式
    private String starAt;

    @NotBlank
    // todo 验证时间格式字符串格式
    private String endAt;

    @NotBlank
    private String name;

    private String mark;

    @NotBlank
    @ServicePhoneFormatValidator
    private String servicePhone;

    @NotNull
    private Boolean isStation;

    @NotNull
    private Boolean isAirport;

    @NotNull
    private Boolean isSelfService;

    @NotNull
    private List<CreateGuid> pickupGuids;

    @NotNull
    private List<CreateGuid> returnGuids;
}
