/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.rest.api;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class ConfigurationResource extends BaseAbstract{

   public org.springframework.test.web.servlet.ResultActions getConfiguration() throws Exception {
       var url = "/configuration";
       log.info("Getting the common Configurations: {}", url);

       return getRequest(url);
   }
}
