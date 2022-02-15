/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.repositories;

import com.zhuche.server.model.Banner;
import org.springframework.data.repository.CrudRepository;

public interface BannerRepository extends CrudRepository<Banner, Long> { }
