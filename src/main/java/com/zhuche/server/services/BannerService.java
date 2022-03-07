/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/16
 * Listen  MIT
 */

package com.zhuche.server.services;

import com.zhuche.server.dto.request.banners.UpdateBannerRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Banner;
import com.zhuche.server.repositories.BannerRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class BannerService {
    private final BannerRepository bannerRepository;

    private final ConfigurationService configurationService;

    public PageFormat  getBannerPage(Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        var bannerPage = bannerRepository.getBanners(pagingSort).stream().toList();
        var pageFormat  = PageFormat.builder()
            .total( bannerRepository.count() )
            .list(bannerPage.stream().toList())
            .currentPage(page + 1)
            .size(size)
            .build();

        return pageFormat;
    }

    public List<Banner> getBanners() {
        var res = bannerRepository.getBanners();
        res = res.stream().peek(i -> i.setImgKey( ConfigurationService.getPrefixUrl()+ "/" + i.getImgKey() ))
            .toList();

        return res;
    }

     public Banner updateBanner(Integer id, UpdateBannerRequest request) {
         var banner = bannerRepository.findById((long) id).get();
         banner.setContent(request.getContent());
         banner.setImgKey(request.getImgKey());
         banner.setTitle(request.getTitle());
         banner = bannerRepository.save(banner);

         return banner;
     }

    public void destroy(Integer id) {
        var banner = bannerRepository.findById((long) id).get();
        bannerRepository.delete(banner);
    }
}
