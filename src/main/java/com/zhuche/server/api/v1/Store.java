package com.zhuche.server.api.v1;

import com.zhuche.server.dto.request.store.CreateStoreRequest;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/stores")
public class Store {


    @PostMapping
    public String createStore(@RequestBody CreateStoreRequest request) {
        return "hello";
    }
}
