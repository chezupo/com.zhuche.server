package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import java.util.Set;

@EqualsAndHashCode(callSuper = true)
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE user  SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer"})
public class User extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;

    @JsonIgnore
    private String password;

    private Boolean isEnabled;

    private Double balance;

    @Column(name="commission", columnDefinition = "decimal", precision = 2, scale = 0)
    private BigDecimal commission; // 佣金
    @Column(name="withdrawn_commission", columnDefinition = "decimal", precision = 2, scale = 0)
    private BigDecimal withdrawnCommission; // 已提现佣金
    @Column(name="withdrawal_in_progress_commission", columnDefinition = "decimal", precision = 2, scale = 0)
    private BigDecimal withdrawalInProgressCommission; // 提现中佣金

    @Column(name = "alipay_qr")
    private String alipayQr; //支付宝推广二维码

    @ElementCollection(fetch = FetchType.EAGER)
    @Enumerated(EnumType.STRING) // Possibly optional (I'm not sure) but defaults to ORDINAL.
    private Collection<Role> roles;

    @JsonProperty
    public void setPassword(String password) {
        this.password = password;
    }

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonIgnoreProperties({
        "hibernateLazyInitializer",
        "user"
    })
    private AlipayAccount alipayAccount;

    @OneToOne(cascade = CascadeType.ALL)
    @JsonIgnoreProperties({"admin", "comments", "password"})
    private Store  store;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    @JsonIgnore
    private Set<Comment> comments;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    @JsonIgnoreProperties({
        "hibernateLazyInitializer",
        "user"
    })
    private List<UserCoupon> userCoupons;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "p_id")
    @JsonIgnore
    private User user;
}