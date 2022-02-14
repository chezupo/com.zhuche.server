/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.dto.response;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class UnityResponse<T> {
    private T data;

    public Boolean getIsSuccess() {
        return true;
    }
}
