package com.zhuche.server.dto.response.me.promotion;

import com.zhuche.server.model.Order;
import com.zhuche.server.model.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PromotionInfoResponse {
    private Long downLineCount;

    private List<Order> orders;

    private List<User> promotionLevel1Users;

    private List<User> promotionLevel2Users;
}
