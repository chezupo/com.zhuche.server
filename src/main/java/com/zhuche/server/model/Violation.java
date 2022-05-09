package com.zhuche.server.model;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.zhuche.server.services.ConfigurationService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;
import com.alibaba.fastjson.JSONArray;
import javax.persistence.*;
import java.util.Collections;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE orders SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "violation")
public class Violation extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    private String title;

    private String description;

    private String images; // 图片

    public void setImages(List<String> newImages) {
        final String prefix = ConfigurationService.getPrefixUrl() + "/";
        final var newValue = newImages
            .stream()
            .peek(i -> i.replace(prefix, "") )
            .toList();
        images = (new JSONArray(Collections.singletonList(newValue))).toString();
    }

    public List<String> getImages() {
        final String prefix = ConfigurationService.getPrefixUrl() + "/";
        final List<String> imageList = JSON.parseArray(images, String.class);
        imageList
            .stream()
            .map(i ->  prefix + i.replace(prefix, "") )
            .toList();

        return imageList;
    }

    private double amount; // 扣除的费用

    private double freezeAmount; // 余下冻结的费用

    private String alipayOutTradeNo; // 支付宝订单号

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToOne
    @JoinColumn(name = "order_id")
    private Order order;
}
