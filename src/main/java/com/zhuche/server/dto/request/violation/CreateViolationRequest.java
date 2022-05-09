package com.zhuche.server.dto.request.violation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.util.List;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class CreateViolationRequest {
    private String title;

    private String description;

    private List<String> images; // 图片

    private double amount; // 扣除的费用

    private double freezeAmount; // 余下冻结的费用
}
