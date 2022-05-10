/**
 * 推广海报
 */
package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.zhuche.server.services.ConfigurationService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.math.BigDecimal;

@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@SuperBuilder
@SQLDelete(sql = "UPDATE promotional_poster SET deleted_at = CURRENT_TIMESTAMP WHERE id = ?")
@Where(clause = "deleted_at IS NULL")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer"})
public class PromotionalPoster extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    private String url;

    public void setUrl(String newUrl) {
        String prefix = ConfigurationService.getPrefixUrl() + "/";
        url = newUrl.replace(prefix, "");
    }

    public String getUrl() {
        String prefix = ConfigurationService.getPrefixUrl() + "/";
        return prefix + url.replace(prefix, "");
    }

    @Column(name="size", columnDefinition = "decimal", precision = 2, scale = 0)
    private BigDecimal size;

    @Column(name="position_x", columnDefinition = "decimal", precision = 2, scale = 0)
    private BigDecimal positionX;

    @Column(name="position_y", columnDefinition = "decimal", precision = 2, scale = 0)
    private BigDecimal positionY;
}
