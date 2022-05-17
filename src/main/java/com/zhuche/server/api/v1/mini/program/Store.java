package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Car;
import com.zhuche.server.services.CarService;
import com.zhuche.server.services.CommentService;
import com.zhuche.server.services.MiniProgramStoreService;
import com.zhuche.server.validators.store.HasStoreValidator;
import lombok.AllArgsConstructor;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.websocket.server.PathParam;
import java.util.List;

@RestController("miniProgramStore")
@RequestMapping("/api/v1/miniProgram")
@AllArgsConstructor
@Validated
public class Store {
    private final MiniProgramStoreService miniProgramStoreService;
    private final CarService carService;
    private final CommentService commentService;

    @GetMapping("/stores")
    public UnityResponse getStores(
        @PathParam("keyword") @NotBlank String keyword
    ) {
        final var stores =  miniProgramStoreService.getStores(keyword);
        return UnityResponse.builder()
            .data(stores)
            .build();
    }

    @GetMapping("/stores/{id}/cars")
    public UnityResponse fetchCars(
        @PathVariable("id") @HasStoreValidator Long id
    ) {
        final List<Car> cars =  carService.fetchAllCarById(id);

        return UnityResponse.builder()
            .data(cars)
            .build();
    }

    @GetMapping("/stores/{id}")
    public UnityResponse store(
        @PathVariable("id") @HasStoreValidator Long id
    ) {
        final com.zhuche.server.model.Store store =  carService.getStoreById(id);

        return UnityResponse.builder()
            .data(store)
            .build();
    }

    @GetMapping("/stores/{id}/comments")
    public UnityResponse storeComments(
        @PathVariable("id") @HasStoreValidator Long id,
        @Param("page") Integer page,
        @Param("size") Integer size
    ) {
        final PageFormat comments = commentService.getCommentsByStoreId(id, page, size);

        return UnityResponse.builder()
            .data(comments)
            .build();
    }

    @GetMapping("/store")
    public UnityResponse getStoreByLocation(
        @Param("lat") @NotNull float lat,
        @Param("lng") @NotNull float lng
    ) {
        final com.zhuche.server.model.Store store =  miniProgramStoreService.getStoreByLocation(lat, lng);

        return UnityResponse.builder()
            .data(store)
            .build();
    }
}
