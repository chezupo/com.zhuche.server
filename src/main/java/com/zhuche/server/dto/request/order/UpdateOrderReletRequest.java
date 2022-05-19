/**
 * 租车续费用请求
 */
package com.zhuche.server.dto.request.order;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateOrderReletRequest {
    @NotNull
    Long days;
}
