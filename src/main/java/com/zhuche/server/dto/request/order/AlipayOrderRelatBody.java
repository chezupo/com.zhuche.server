/**
 * 支付宝租车续费请求表单
 */
package com.zhuche.server.dto.request.order;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AlipayOrderRelatBody {
    private Long orderId;
    private Long days;
    private Double amount;
}
