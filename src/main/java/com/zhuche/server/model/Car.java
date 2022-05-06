/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/27
 * Listen  MIT
 */

package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.zhuche.server.services.ConfigurationService;
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
@JsonIgnoreProperties({"hibernateLazyInitializer"})
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

    public String getCover() {
        return ConfigurationService.getPrefixUrl() + "/" + cover;
    }

    public void setCover(String newCover) {
        final String prefix = ConfigurationService.getPrefixUrl() + "/";
        cover = newCover.replace(prefix, "");
    }

    private String type; // 车型

    private String tags;

    private Boolean isOnline; // 是否上架

    public void setTags(List<String> tags) {
        this.tags = String.join(",", tags);
    }

    public List<String> getTags() {
        return  Arrays.asList( tags.split(",") );
    }

    private String number; // 车牌号

    private Float rent; // 价格 / 天

    private Float deposit; // 押金

    private Float insuranceFee; //驾无忧费(天)

    private Float handlingFee; // 手续费

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "store_id")
    @JsonIgnoreProperties({"brands"})
    private Store store;

    @ManyToMany(fetch = FetchType.LAZY)
    @JsonIgnoreProperties({"store"})
    private Set<StoreCarConfig> configs;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "brand_series_id")
    @JsonIgnoreProperties({"brand", "hibernateLazyInitializer"})
    private BrandSeries brandSeries;

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "car_category_id")
    @JsonIgnoreProperties({"brand", "hibernateLazyInitializer"})
    private CarCategory carCategory;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "car_id")
    @JsonIgnoreProperties({
        "order",
        "car",
        "user",
        "store",
    })
    private List<Comment> comments;
}
