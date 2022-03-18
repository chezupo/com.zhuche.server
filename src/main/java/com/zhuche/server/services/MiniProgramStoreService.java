package com.zhuche.server.services;

import com.zhuche.server.model.Store;
import com.zhuche.server.repositories.StoreRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class MiniProgramStoreService {
        private final StoreRepository storeRepository;

    public List<Store> getStores(String keyword) {
        return null;
//        storeRepository.getStores()
    }

}
