/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE store SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
public class Store extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    private String name;

    private String mark;

    private String starAt;

    private String endAt;

    private String address;

    private String servicePhone;

    private Float lat;

    private Float lng;

    private Boolean isEnable;

    private Boolean isStation;

    private Boolean isAirport;

    protected Boolean isSelfService;

    @OneToOne(mappedBy = "store",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonIgnoreProperties({"store", "comments", "password"})
    @JoinColumn(name = "id",referencedColumnName = "store_id")
    private User admin;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonIgnoreProperties({"store"})
    @JoinColumn(name = "store_id")
    private List<StoreBanner> banners;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonIgnoreProperties({"store"})
    @JoinColumn(name = "store_id")
    private List<PickupGuid> pickupGuides = new ArrayList<>();

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "store_id")
    @JsonIgnoreProperties({"store"})
    private List<ReturnGuid> returnGuides;

    @OneToMany(mappedBy = "store", fetch = FetchType.LAZY)
    @JsonIgnore
    private List<Comments> comments;

    @OneToOne
    @JoinColumn(name = "area_code")
    @JsonIgnoreProperties({"province", "city", "stores"})
    private Area area;

    @OneToOne
    @JoinColumn(name = "city_code")
    @JsonIgnoreProperties({"areas", "province"})
    private City city;

    @OneToOne
    @JoinColumn(name = "province_code", referencedColumnName = "code")
    @JsonIgnoreProperties({"areas", "cities"})
    private Province province;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "store_id", referencedColumnName = "id")
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler", "store"})
    private List<Brand> brands;

    @OneToMany
    @JsonIgnore
    @JoinColumn(name = "store_id")
    private List<Car> cars;
}

