package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE user_coupon SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer"})
public class UserCoupon extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    private String title;

    private String content;

    private Float amount; // 额度

    private Float meetAmount; // 满足的额度

    private Boolean isWithHoliday; // 节假日能否使用

    private Boolean isWithRent; // 可用于减免车辆租赁费用

    private Boolean isWithServiceAmount; // 可用于减免服务费

    private Long expired;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "coupon_id")
    private Coupon coupon;

    @Transient
    private Boolean isValid;

    @Transient
    private String reason;

    public String getReason() {
        return reason == null ? "" : reason;
    }

    public void setReason(String newReason) {
        reason = newReason;
    }

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    @JsonIgnoreProperties({
        "store",
        "comments",
        "userCoupons",
    })
    private User user;
}
