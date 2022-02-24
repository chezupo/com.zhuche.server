/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/21
 * Listen  MIT
 */

package com.zhuche.server.model;


import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Set;


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

    private String tags;

    private Integer lat;

    private Integer lng;

    private Boolean isEnable;

    private Boolean isStation;

    private Boolean isAirport;

    protected Boolean isSelfService;

    @OneToOne(mappedBy = "store")
    private User admin;

    @OneToMany
    private Set<StoreBanner> banners;

    @OneToMany
    private Set<PickupGuide> pickupGuides;

    @OneToMany
    private Set<ReturnGuide> returnGuides;

    @OneToMany
    private Set<Comments> comments;
}

