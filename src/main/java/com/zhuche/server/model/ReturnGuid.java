/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/22
 * Listen  MIT
 */

package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.zhuche.server.services.ConfigurationService;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE return_guid SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
public class ReturnGuid extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    private String imgKey;

    private String title;

    @Transient
    private String prefixUrl;

    public String getPrefixUrl() {
        final var prefixUrl = ConfigurationService.getPrefixUrl();

        return prefixUrl;
    }

    @ManyToOne
    @JsonIgnoreProperties({
        "admin",
        "banners",
        "pickupGuides",
        "returnGuides",
        "updatedAt",
        "mark",
        "starAt",
        "endAt",
        "address",
        "servicePhone",
        "lat",
        "lng",
        "isEnable",
        "isStation",
        "isAirport",
        "isSelfService",
        "area",
        "city",
        "province",
        "imgKey",
        "prefixUrl",
        "createdAt",
        "updatedAt",
        "area",
        "city",
        "province"
    })
    @JoinColumn(name = "store_id")
    private Store store;
}
