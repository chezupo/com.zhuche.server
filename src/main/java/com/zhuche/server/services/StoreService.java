package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.StoreMapper;
import com.zhuche.server.dto.request.guid.CreateGuid;
import com.zhuche.server.dto.request.store.CreateStoreRequest;
import com.zhuche.server.dto.request.store.UpdateStoreRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.*;
import com.zhuche.server.util.PasswordEncodeUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.dialect.InnoDBStorageEngine;
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
        final var differentiatedStoreBanners = getDifferentiatedStoreBanners(store, request);
        storeBannerRepository.deleteAll(differentiatedStoreBanners.get(0));
        storeBannerRepository.saveAll(differentiatedStoreBanners.get(1));
        // update the return guides for store.
        final var differentiatedReturnGuides  = getDifferentiated(store, request);
        returnGuidRepository.deleteAll(differentiatedReturnGuides.get(0));
        returnGuidRepository.saveAll(differentiatedReturnGuides.get(1));
        // update the return pickup for store.
        final var differentiatedPickupGuides = getDifferentiatedPickupGuides(store, request);
        pickupGuidRepository.saveAll(differentiatedPickupGuides.get(0));
        pickupGuidRepository.deleteAll(differentiatedPickupGuides.get(1));
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

    private List<List<ReturnGuid>> getDifferentiated(Store store, UpdateStoreRequest request) {
        final List<String> savedReturnGuides =  store.getReturnGuides().stream().map(ReturnGuid::getImgKey).toList();
        final List<String> requestReturnGuids = request.getReturnGuids().stream().map(CreateGuid::getImgKey).toList();
        final List<ReturnGuid> deleteReturnGuides = store.getReturnGuides().stream().filter(el ->
            !requestReturnGuids.contains(el.getImgKey())
        ).toList();
        final List<ReturnGuid> newReturnGuides = request.getReturnGuids().stream()
            .filter(el -> !savedReturnGuides.contains(el.getImgKey()))
            .map(el ->
                (ReturnGuid) ReturnGuid.builder()
                    .store(store)
                    .imgKey(el.getImgKey())
                    .title(el.getTitle())
                    .build()
            )
            .toList();
        final List<List<ReturnGuid>> res = new ArrayList<>();
        res.add(deleteReturnGuides);
        res.add(newReturnGuides);

        return res;
    }

    private List<List<PickupGuid>> getDifferentiatedPickupGuides(Store store, UpdateStoreRequest request) {
        final List<String> savedPickupGuides = store.getPickupGuides().stream().map(PickupGuid::getImgKey).toList();
        final List<PickupGuid> newPickGuides = request.getPickupGuids()
            .stream()
            .filter(el -> !savedPickupGuides.contains(el.getImgKey()))
            .map(el ->
                (PickupGuid) PickupGuid
                    .builder()
                    .title(el.getTitle())
                    .imgKey(el.getImgKey())
                    .store(store)
                    .build()
            )
            .toList();
        final List<String> requestPickupGuides = request.getPickupGuids().stream().map(CreateGuid::getImgKey).toList();
        final List<PickupGuid> deletePickupGuides = store.getPickupGuides().stream()
            .filter(el -> !requestPickupGuides.contains(el.getImgKey()))
            .toList();
        final List<List<PickupGuid>> res = new ArrayList<>();
        res.add(deletePickupGuides);
        res.add(newPickGuides);

        return res;
    }

    private List<List<StoreBanner>> getDifferentiatedStoreBanners(Store store, UpdateStoreRequest request) {
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
        final List<List<StoreBanner>> res = new ArrayList<>();
        res.add(deleteBanners);
        res.add(newBanners);

        return res;
    }
}
