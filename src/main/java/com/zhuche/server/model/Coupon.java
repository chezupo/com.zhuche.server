package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE coupon SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
public class Coupon extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    private String name;

    private String content;

    private Boolean isAutoDispatchingToNewUser; // 自动派发给新用户

    private Float amount; // 额度

    private Float meetAmount; // 满足的额度

    private Integer expired; // 期限(秒)

    private Boolean isWithHoliday; // 节假日能否使用

    private Boolean isWithRent; // 可用于减免车辆租赁费用

    private Boolean isWithServiceAmount; // 可用于减免服务费
}
