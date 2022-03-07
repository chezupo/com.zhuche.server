/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/18
 * Listen  MIT
 */

package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Getter
@Setter
public class Area {
    @Id
    private String code;

    private String name;

    @OneToOne
    @JoinColumn(name = "province_code")
    private Province province;

    @ManyToOne(
//        fetch = FetchType.LAZY
    )
    @JoinColumn(name = "city_code")
    @JsonIgnore
    private City city;

}
