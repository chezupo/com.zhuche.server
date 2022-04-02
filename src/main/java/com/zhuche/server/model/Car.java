/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/27
 * Listen  MIT
 */

package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE car SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
public class Car extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    @Enumerated(EnumType.STRING)
    private CarPowerType powerType;

    private Boolean isSelfHelp;

    private Float displacement; //  排量

    @Enumerated(EnumType.STRING) // 自动档/手动档
    private CarShift shift;

    private float gasVolume; // 油量

    private Integer seats; // 座椅数

    @Enumerated(EnumType.STRING) // 发动机类型
    private CarEngineType engineType;

    private String name;

    private String cover;

    private String type; // 车型

    private String tags;

    private boolean isOnline; // 是否上架

    private void setTags(List<String> tags) {
        this.tags = String.join(",", tags);
    }

    private List<String> getTags() {
        return  Arrays.asList( tags.split(",") );
    }

    private String number; // 车牌号

    private Float price; // 价格 / 天

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "store_id")
    private Store store;

    @ManyToMany(fetch = FetchType.LAZY)
    private Set<StoreCarConfig> configs;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "brand_series_id")
    private BrandSeries brandSeries;
}
