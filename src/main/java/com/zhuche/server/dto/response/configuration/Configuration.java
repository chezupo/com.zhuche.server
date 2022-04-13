/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.dto.response.configuration;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Configuration {
    private String imgPrefix;

    private String appName;

    private String logo;

    private String amapKey;

    private String amapSearchKey;

    private String notice;

    private Float insurance;

    private String servicePhone;

    private String insuranceAgreement;

    private String orderAgreement;
}
