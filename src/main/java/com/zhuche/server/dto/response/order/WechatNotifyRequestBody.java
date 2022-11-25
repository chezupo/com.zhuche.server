package com.zhuche.server.dto.response.order;

import lombok.Data;

@Data
public class WechatNotifyRequestBody {
    public String id;
    public String create_time;
    public String resource_type;
    public String event_type;
    public String summary;
    public WechatPayNotifyRequestBodyResource resource;
}



