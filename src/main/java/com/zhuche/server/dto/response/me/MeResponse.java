/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.dto.response.me;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import java.math.BigDecimal;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MeResponse {
    private Long id;

    private String avatar;

    private String nickName;

    private String city;

    private String code;

    private String countryCode;

    private String gender;

    private String province;

    private String phone;

    private Boolean isAuthorizeBaseInfo;

    private Double balance;

    private BigDecimal commission; // 佣金
    private BigDecimal withdrawnCommission; // 已提现佣金
    private BigDecimal withdrawalInProgressCommission; // 提现中佣金
}
