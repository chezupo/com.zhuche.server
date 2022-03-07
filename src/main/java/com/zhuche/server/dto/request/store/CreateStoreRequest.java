package com.zhuche.server.dto.request.store;

import com.zhuche.server.dto.request.guid.CreateGuid;
import com.zhuche.server.validators.area.code.AreaCodeMustBeExisted;
import com.zhuche.server.validators.store.ServicePhoneFormatValidator;
import com.zhuche.server.validators.user.HasUserValidator;
import com.zhuche.server.validators.user.UsersMusBeNoExistValidator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CreateStoreRequest {
    @NotBlank
    @UsersMusBeNoExistValidator
    // todo 添加账号不能有空格的验证器
    private String username;

    @NotBlank
    // todo 添加密码不能有空格的验证器
    private String password;

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
