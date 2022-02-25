/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/18
 * Listen  MIT
 */

package com.zhuche.server.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Data
public class Area {
    @Id
    private String code;

    private String name;

    @ManyToOne
    @JoinColumn(name = "province_code")
    private Province province;

    @ManyToOne
    @JoinColumn(name = "city_code")
    private City city;

}
