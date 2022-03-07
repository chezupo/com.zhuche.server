package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.StoreMapper;
import com.zhuche.server.dto.request.store.CreateStoreRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.*;
import com.zhuche.server.util.PasswordEncodeUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class StoreService {
    private final UserRepository userRepository;
    private final StoreMapper storeMapper;
    private final PasswordEncodeUtil passwordEncodeUtil;
    private final StoreRepository storeRepository;
    private final StoreBannerRepository storeBannerRepository;
    private final ReturnGuidRepository returnGuidRepository;
    private final PickupGuidRepository pickupGuidRepository;

    @Transactional
    public Store createStore(CreateStoreRequest request) {
        User newAdmin = storeMapper.createRequestToUser(request);
        newAdmin.setRoles(List.of(Role.ROLE_BUSINESS));
        newAdmin.setIsEnabled(true);
        newAdmin.setPassword(passwordEncodeUtil.encode(newAdmin.getPassword()));
        final var storeDto = storeMapper.createRequestToStore(request);
        newAdmin.setStore(storeDto);
        newAdmin = userRepository.save(newAdmin);
        final Store newStore = newAdmin.getStore();
        // update multiple banners
        final List<StoreBanner> banners = newStore.getBanners().stream().map(el -> {
                el.setStore(newStore);
                return el;
            })
            .toList();
        storeBannerRepository.saveAll(banners);
        // update multiple guids
        final List<ReturnGuid> returnGuids = newStore.getReturnGuides().stream().map(el -> {
                el.setStore(newStore);
                return el;
            })
            .toList();
        returnGuidRepository.saveAll(returnGuids);

        final List<PickupGuid> pickupGuids = newStore.getPickupGuides().stream().map(el -> {
                el.setStore(newStore);
                return el;
            })
            .toList();
        pickupGuidRepository.saveAll(pickupGuids);

        return newStore;
    }

    public PageFormat getPage(Integer page, Integer size) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Pageable pagingSort = PageRequest.of(page, size, sort);
        final Page<Store> storeList = storeRepository.getStores(pagingSort);
        final List<Store> stores = storeList.stream().toList();

        return PageFormat.builder()
            .total(storeList.getTotalElements())
            .list(stores)
            .currentPage(page + 1)
            .size(size)
            .build();
    }
}
