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
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@JsonIgnoreProperties(value = {"hibernateLazyInitializer"})
public class Province {
    @Id
    private String code;

    private String name;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "province_code")
    @JsonIgnore
    private List<City> cities;
}
