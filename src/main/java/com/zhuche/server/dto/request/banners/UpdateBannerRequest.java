/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/18
 * Listen  MIT
 */

package com.zhuche.server.dto.request.banners;

import com.zhuche.server.validators.banners.HasBannerId;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UpdateBannerRequest {
    @NotBlank
    String imgKey;

    @NotBlank
    String title;

    @NotBlank
    String content;
}
