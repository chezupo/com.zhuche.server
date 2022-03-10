package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.StoreMapper;
import com.zhuche.server.dto.request.store.CreateStoreRequest;
import com.zhuche.server.dto.request.store.UpdateStoreRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.*;
import com.zhuche.server.util.PasswordEncodeUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class StoreService {
    private final UserRepository userRepository;
    private final StoreMapper storeMapper;
    private final PasswordEncodeUtil passwordEncodeUtil;
    private final StoreRepository storeRepository;
    private final StoreBannerRepository storeBannerRepository;
    private final ReturnGuidRepository returnGuidRepository;
    private final PickupGuidRepository pickupGuidRepository;
    private final AreaRepository areaRepository;

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

    public PageFormat getPage(Integer page, Integer size,String name, String provinceCode, String cityCode, String  areaCode) {
        page = page != null ? --page : 0;
        size = size != null ? size : 10;
        Pageable pagingSort = PageRequest.of(page, size);
        // dynamic query
        Specification<Store> sf = (root, query,builder) -> {
            List<Predicate> maps = new ArrayList<>();
            if (null != provinceCode) {
                Predicate provinceMap = builder.equal(root.get("province").get("code").as(String.class), provinceCode);
                maps.add(provinceMap);
            }
            if (null != cityCode) {
                maps.add( builder.equal(root.get("city").get("code").as(String.class), cityCode) );
            }
            if (null != cityCode) {
                maps.add( builder.equal(root.get("area").get("code").as(String.class), areaCode) );
            }
            if (name != null) {
                var p3 = builder.like(root.get("name"), "%" + name + "%");
                maps.add(p3);
            }
            Predicate[] pre = new Predicate[maps.size()];
            Predicate and = builder.and(maps.toArray(pre));
            query.where(and);
            List<Order> orders = new ArrayList<>();
            orders.add(builder.desc(root.get("id")));

            return query.orderBy(orders).getRestriction();
        };
        final Page<Store> storeList = storeRepository.findAll(sf,pagingSort);

        return PageFormat.builder()
            .total(storeList.getTotalElements())
            .list(storeList.stream().toList())
            .currentPage(page + 1)
            .size(size)
            .build();
    }

    public void destroy(Long id) {
        storeRepository.deleteById(id);
    }

    @Transactional
    public Store update(Long id, UpdateStoreRequest request) {
        final var store = storeRepository.getById(id);
        // update store's banners
        final List<StoreBanner> deleteBanners = new ArrayList();
        final List<StoreBanner> newBanners = new ArrayList();

        store.setBanners(
            store.getBanners()
                .stream()
                .filter(el -> {
                    if(request.getBanners().contains(el.getImgKey())) {
                        return true;
                    } else {
                        deleteBanners.add(el);
                        return false;
                    }
                })
                .toList()
        );
        final List<String> storedBanners = store.getBanners().stream().map(el -> el.getImgKey()).toList();
        request.getBanners().stream().filter(el -> !storedBanners.contains(el))
            .forEach(el -> {
                newBanners.add(
                    StoreBanner
                        .builder()
                        .imgKey(el)
                        .store(store)
                        .build()
                );
            });
        storeBannerRepository.deleteAll(deleteBanners);
        storeBannerRepository.saveAll(newBanners);

        // Update other properties of the store.
        var area = areaRepository.findByCode(request.getAreaCode());
        store.setAddress(request.getAddress());
        store.setServicePhone(request.getServicePhone());
        store.setArea(area);
        store.setCity(area.getCity());
        store.setProvince(area.getProvince());
        store.setIsStation(request.getIsStation());
        store.setIsAirport(request.getIsAirport());
        store.setIsStation(request.getIsStation());
        store.setEndAt(request.getEndAt());
        store.setStarAt(request.getStarAt());
        store.setIsSelfService(request.getIsSelfService());
        store.setLat(request.getLat());
        store.setLng(request.getLng());
        store.setMark(request.getMark());
        store.setName(request.getName());

        return store;
    }
}
