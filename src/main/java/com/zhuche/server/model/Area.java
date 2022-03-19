/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/18
 * Listen  MIT
 */

package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
public class Area {
    @Id
    private String code;

    private String name;

    @OneToOne
    @JoinColumn(name = "province_code")
    @JsonIncludeProperties({"hibernateLazyInitializer"})
    private Province province;

    @OneToOne( fetch = FetchType.LAZY )
    @JoinColumn(name = "city_code")
    @JsonIgnore
    private City city;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "area_code")
    private List<Store> stores;
}
