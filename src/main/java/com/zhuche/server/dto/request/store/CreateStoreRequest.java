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
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class CreateStoreRequest extends UpdateStoreRequest{
    @NotBlank
    @UsersMusBeNoExistValidator
    // todo 添加账号不能有空格的验证器
    private String username;

    @NotBlank
    // todo 添加密码不能有空格的验证器
    private String password;

    @NotNull
    private List<CreateGuid> pickupGuids;

    @NotNull
    private List<CreateGuid> returnGuids;
}
