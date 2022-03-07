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
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.List;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE banner SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
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

    @OneToOne(mappedBy = "store", fetch = FetchType.LAZY)
    @JsonIgnoreProperties({"store", "comments", "password"})
    private User admin;

    @OneToMany(mappedBy = "store", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonIgnoreProperties({"store"})
    private List<StoreBanner> banners;

    @OneToMany(mappedBy = "store", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonIgnoreProperties({"store"})
    private List<PickupGuid> pickupGuides;

    @OneToMany(mappedBy = "store", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonIgnoreProperties({"store"})
    private List<ReturnGuid> returnGuides;

    @OneToMany(mappedBy = "store", fetch = FetchType.LAZY)
    @JsonIgnore
    private List<Comments> comments;

    @OneToOne
    @JoinColumn(name = "area_code", referencedColumnName = "code")
    @JsonIgnoreProperties({"province", "city"})
    private Area area;

    @OneToOne(fetch = FetchType.LAZY)
    @JsonIgnoreProperties({"province", "areas"})
    private City city;

    @OneToOne
    @JoinColumn(name = "province_code", referencedColumnName = "code")
    private Province province;
}

