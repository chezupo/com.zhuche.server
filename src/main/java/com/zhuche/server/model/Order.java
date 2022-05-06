package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.zhuche.server.services.ConfigurationService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE orders SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "orders")
public class Order extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    private Long startTimeStamp;

    private Long endTimeStamp;

    private Boolean isInsurance; // 是否启用驾无忧

    private String cover; // 汽车封面
    public String getCover() {
        return ConfigurationService.getPrefixUrl() + "/" + cover;
    }
    public void setCover(String newCover) {
        final String prefix = ConfigurationService.getPrefixUrl() + "/";
        cover = newCover.replace(prefix, "");
    }

    private String alipayToken; // 支付宝 支付时用的token
    private String alipayTradeNo; // 支付宝订单号
    private String alipayOutTradeNo; // 支付宝商家自定义订单号

    private double insuranceFee; // 驾无成费用
    private double rent; // 租金
    private double deposit; // 押金
    private double handlingFee; // 手续费
    private double amount; // 总费用
    private double waiverHandlingFee; // 减免手续费
    private double waiverRent; // 减免的租金

    private String remark; // 备注
    @Temporal(TemporalType.TIMESTAMP)
    private Date createAlipayAt; // 创建支付宝订单的时间
    @Enumerated(EnumType.STRING)
    private OrderStatus status; // 订单状态
    private String title; // 商品名
    private String outRequestNo; // 预授权资金操作的请求流水号
    private String authNo; // 预授权流水号
    private double unfreezeAmount; // 已解冻的资金
    private String authBody; // 授权请求字符
    @Enumerated(EnumType.STRING)
    private PayType freezeType; // 冻结方式
    private Boolean isUnfreeze; // 是否解冻
    private Boolean isRefund; // 是否退款

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "start_store_id")
    @JsonIgnoreProperties({
        "admin",
        "banners",
        "pickupGuides",
        "returnGuides",
        "comments",
        "area",
        "province",
        "brands",
        "cars"
    })
    private Store startStore;

    @Enumerated(EnumType.STRING) // Possibly optional (I'm not sure) but defaults to ORDINAL.
    private PayType payType; // 支付方式

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "end_store_id")
    @JsonIgnoreProperties({
        "admin",
        "banners",
        "pickupGuides",
        "returnGuides",
        "comments",
        "area",
        "province",
        "brands",
        "cars"
    })
    private Store endStore;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "car_id")
    @JsonIgnoreProperties({
        "configs",
        "brandSeries",
        "carCategory",
        "comments"
    })
    private Car car;


    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    @JsonIgnoreProperties({
         "store",
         "comments",
         "userCoupons",
    })
    private User user;

    @OneToOne(mappedBy = "order")
    @JsonIgnoreProperties({
        "store",
        "comments",
        "order",
        "userCoupons",
    })
    private Comment comment;
}
