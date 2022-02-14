/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/15
 * Listen  MIT
 */

package com.zhuche.server.dto.response.uploadToken;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class CreateTokenResponse {
    private String accessToken;

    private String platForm;

    private String prefixUrl;
}
