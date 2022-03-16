package com.zhuche.server.services;

import com.zhuche.server.model.Banner;
import com.zhuche.server.repositories.BannerRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class MiniProgramBannerService {
    private final BannerRepository bannerRepository;

    public List<Banner> getBanners() {
        return bannerRepository.getBanners();
    }
}
