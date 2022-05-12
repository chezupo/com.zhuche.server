package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.PosterMapper;
import com.zhuche.server.dto.request.promotionalPoster.CreatePromotionalPosterRequest;
import com.zhuche.server.dto.request.promotionalPoster.UpdatePromotionalPosterRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.PromotionalPoster;
import com.zhuche.server.repositories.PromotionalPosterRepository;
import com.zhuche.server.util.PaginationUtil;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@AllArgsConstructor
public class PromotionalPosterService {
    private final PromotionalPosterRepository promotionalPosterRepository;
    private final PaginationUtil paginationUtil;
    private final PosterMapper posterMapper;

    public PromotionalPoster createPoster(CreatePromotionalPosterRequest request) {
        PromotionalPoster  promotionalPoster = PromotionalPoster.builder().build();
        promotionalPoster.setCreatedAt(LocalDateTime.now());
        promotionalPoster.setUrl(request.getUrl());
        promotionalPoster.setPositionX(request.getPositionX());
        promotionalPoster.setPositionY(request.getPositionY());
        promotionalPoster.setSize(request.getSize());

        return promotionalPosterRepository.save(promotionalPoster);
    }

    public PageFormat getPageData(Integer page, Integer size) {
        return paginationUtil.getPageFormat(promotionalPosterRepository, page, size);
    }

    public PromotionalPoster updatePoster(Long id, UpdatePromotionalPosterRequest request) {
        var oldPoster = promotionalPosterRepository.findById(id).get();
       var poster = posterMapper.updatePromotionalPosterRequestToPromotionalPoster(request);
       poster.setId(id);
       poster.setCreatedAt(oldPoster.getCreatedAt());

       return promotionalPosterRepository.save(poster);
    }

    public void deletePoster(Long id) {
        promotionalPosterRepository.deleteById(id);
    }

    public List<PromotionalPoster> getPageData() {
       return  promotionalPosterRepository.findAll();
    }
}
