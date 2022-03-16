package com.zhuche.server.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
@Getter
@Setter
public class District {
    @Id
    private Short id;
    private String name;
    private Short parentId;
    private String initial;
    private String initials;
    private String pinyin;
    private String extra;
    private String suffix;
    private String code;
    private String areaCode;
    private Byte order;
}
