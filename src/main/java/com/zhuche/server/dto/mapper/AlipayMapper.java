package com.zhuche.server.dto.mapper;

import com.zhuche.server.dto.response.me.MeResponse;
import com.zhuche.server.model.AlipayAccount;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.springframework.stereotype.Component;

@Mapper(componentModel = "spring")
@Component
public abstract class AlipayMapper {
    @Mappings({
        @Mapping(source = "user.id", target = "id"),
        @Mapping(source = "user.balance", target = "balance")
    })
    public abstract MeResponse AlipayAccountToMeResponse(AlipayAccount alipayAccount);
}
