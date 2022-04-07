package com.zhuche.server.services;

import com.zhuche.server.dto.request.car.category.CreateCategoryRequest;
import com.zhuche.server.model.CarCategory;
import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.CarCategoryRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@Service
@AllArgsConstructor
public class CarCategoryService {
    private final CarCategoryRepository carCategoryRepository;
    private final JWTUtil jwtUtil;

    public CarCategory create(CreateCategoryRequest request) {
        final Store store = jwtUtil.getUser().getStore();
        return carCategoryRepository.save(
            CarCategory.builder()
                .name(request.getName())
                .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                .store(store)
                .build()
        );
    }
}
