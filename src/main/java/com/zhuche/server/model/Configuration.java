/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/20
 * Listen  MIT
 */

package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
public class Configuration{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    private String logo;

    private String appName;

    private String notice;

    private Float insurance; // 出行无忧(保险费)

    private String servicePhone; // 客服电话

    private String insuranceAgreement; // 驾无忧声明

    private String orderAgreement; // 下单声明

    private Double promotionLevel1; // 推广一级分润点 %

    private Double promotionLevel2; // 推广二级分润点 %
}
