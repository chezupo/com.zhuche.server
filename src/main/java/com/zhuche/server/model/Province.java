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
public class Province {
    @Id
    private String code;

    private String name;

    @OneToMany(mappedBy = "province")
    private List<City> cities;

    @OneToMany(mappedBy = "province")
    private List<Area> areas;

}
