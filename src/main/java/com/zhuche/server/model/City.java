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

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Data
public class City {
    @Id
    private String code;

    private String name;

    private String pinyin;

    @OneToOne
    private Province province;

    @OneToMany(mappedBy = "city"
//         cascade = CascadeType.ALL
    )
    @JsonIgnore
    private List<Area> areas;

}
