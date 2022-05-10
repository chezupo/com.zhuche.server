package com.zhuche.server.dto.request.order;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AlipayOvertimeTradeBody {
    private Long orderId;

    private Double days;

    private Long userId;
}
