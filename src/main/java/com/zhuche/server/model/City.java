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
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.persistence.criteria.Fetch;
import java.util.List;
import java.util.Objects;

@Entity
@Setter
@Getter
@JsonIgnoreProperties(value = {"hibernateLazyInitializer"})
public class City {
    @Id
    private String code;

    private String name;

    private String pinyin;

    @OneToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    private Province province;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_code")
    @JsonIgnore
    private List<Area> areas;
}
