/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/1/12
 * Listen  MIT
 */

package com.zhuche.server.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.TimeZone;

@MappedSuperclass
@SuperBuilder
@NoArgsConstructor
@Data
public abstract class BaseEntity {

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    @JsonProperty
    private Long createdAt = Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli();

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    @JsonProperty
    public LocalDateTime getCreatedAt() {
        if (createdAt == null) {
            return null;
        }
        return LocalDateTime.ofInstant(
            Instant.ofEpochMilli(createdAt),
            TimeZone.getDefault().toZoneId()
        );
    }

    public void setCreatedAt(LocalDateTime newCreatedAt) {
        this.createdAt = Timestamp.valueOf(newCreatedAt).toInstant().toEpochMilli();
    }

    @Column(columnDefinition = "DATETIME DEFAULT CURRENT_TIMESTAMP")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonProperty
    private LocalDateTime updatedAt;

    @Column(columnDefinition = "DATETIME DEFAULT CURRENT_TIMESTAMP")
    @JsonIgnore
    private LocalDateTime deletedAt;

}
