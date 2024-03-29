/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/20
 * Listen  MIT
 */

package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;

@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE alipay_account SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
public class AlipayAccount extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String accessToken;

    private String refreshToken;

    private String userId;

    private String reExpiresIn;

    private String expiresIn;

    private String avatar;

    private String city;

    private String nickName;

    private String phone;

    private String province;

    private String gender;

    private String countryCode;

    private String code;

    private Boolean isAuthorizeBaseInfo;

    @OneToOne(mappedBy = "alipayAccount")
    @JsonIgnoreProperties({
        "roles",
        "password",
        "alipayAccount",
        "store",
        "comments",
        "userCoupons"
    })
   private User user;
}
