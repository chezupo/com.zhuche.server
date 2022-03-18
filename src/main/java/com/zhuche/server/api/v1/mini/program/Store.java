package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.MiniProgramStoreService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.server.PathParam;

@RestController("miniProgramStore")
@RequestMapping("/api/v1/miniProgram/stores")
@AllArgsConstructor
public class Store {
    private final MiniProgramStoreService miniProgramStoreService;

    @GetMapping
    public UnityResponse getStores(
        @PathParam("keyword") String keyword
    ) {
        final var stores =  miniProgramStoreService.getStores(keyword);
        return UnityResponse.builder()
            .data(stores)
            .build();
    }
}
