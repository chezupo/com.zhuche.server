/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.request.banners.UpdateBannerRequest;
import com.zhuche.server.model.Banner;
import com.zhuche.server.repositories.BannerRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class BannerService {
    private final BannerRepository bannerRepository;

     public Page<Banner> getBanners(Integer page, Integer size) {
         page = page != null ? page : 1;
         size = size != null ? size : 10;
         Sort sort = Sort.by(Sort.Direction.DESC, "id");
         Pageable pagingSort = PageRequest.of(page, size, sort);
         return null;
     }

     public Banner updateBanner(Integer id, UpdateBannerRequest request) {
         var banner = bannerRepository.findById((long) id).get();
         banner.setContent(request.getContent());
         banner.setImgKey(request.getImgKey());
         banner = bannerRepository.save(banner);

         return banner;
     }

    public void destroy(Integer id) {
        var banner = bannerRepository.findById((long) id).get();
        bannerRepository.delete(banner);
    }
}
