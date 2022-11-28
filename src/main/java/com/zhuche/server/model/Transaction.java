package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;

@EqualsAndHashCode(callSuper = true)
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE transaction SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer"})
public class Transaction extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Double amount;

    private int balance; // 余额，单位: 分

    private String title;

    @Enumerated(EnumType.STRING)
    private TransactionStatus status; // 状态

    private String remark; // 备注

    private String failedReason; // 失败原因

    private boolean isWithDraw; // 是否提现申请

    @Enumerated(EnumType.STRING) // Possibly optional (I'm not sure) but defaults to ORDINAL.
    private PayType payType;

    private String outTradeNo; // 订单号

    @Enumerated(EnumType.STRING) // Possibly optional (I'm not sure) but defaults to ORDINAL.
    private TransactionType transactionType;

    private String tradeNo;

    private String outBizNo; // 转账商家支付宝订单号

    @OneToOne
    @JoinColumn(name = "user_id")
    @JsonIgnoreProperties({
        "roles",
        "store",
        "comments",
        "userCoupons"
    })
    private User user;
}
