package com.zhuche.server.services;

import com.zhuche.server.dto.mapper.StoreMapper;
import com.zhuche.server.dto.request.store.CreateStoreRequest;
import com.zhuche.server.dto.request.store.UpdateStoreRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.*;
import com.zhuche.server.repositories.*;
import com.zhuche.server.util.JWTUtil;
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
import javax.swing.text.Utilities;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

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
    private final JWTUtil jwtUtil;

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
            final var me = jwtUtil.getUser();
            // 不是管理员
            if (!me.getRoles().contains(Role.ROLE_ADMIN)) {
                Predicate  storeAdminMap = builder.equal(root.get("admin").get("id").as(Long.class), me.getId());
                maps.add(storeAdminMap);
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
        final var deletedBanners = updateBanners(store, request);
        // update the return guides for store.
        final var deletedReturnGuides = updateReturnGuidesData(store, request);
        // update the pickup for store.
        final var deletedPickupGuides = updatePickupGuides(store, request);
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
        storeRepository.save(store);
        returnGuidRepository.deleteAll(deletedReturnGuides);
        pickupGuidRepository.deleteAll(deletedPickupGuides);
        storeBannerRepository.deleteAll(deletedBanners);

        return store;
    }

    private List<ReturnGuid> updateReturnGuidesData(Store store, UpdateStoreRequest request) {
        final List<Long> changeIds = new ArrayList<>();
        final List<Long> savedIds = new ArrayList<>();
        final Map<Long, Integer> idMapReturnGuideIndex = new HashMap<>();
        final AtomicInteger indexHolder = new AtomicInteger();
        for (ReturnGuid returnGuid : store.getReturnGuides()) {
            final var index = indexHolder.getAndIncrement();
            idMapReturnGuideIndex.put(returnGuid.getId(), index);
            savedIds.add(returnGuid.getId());
        }
        request.getReturnGuids().forEach(requestReturnGuide -> {
            if (requestReturnGuide.getId() != null && savedIds.contains(requestReturnGuide.getId())) {
                final var index = idMapReturnGuideIndex.get(requestReturnGuide.getId());
                final var savedReturnGuide = store.getReturnGuides().get(index);
                savedReturnGuide.setImgKey(requestReturnGuide.getImgKey());
                savedReturnGuide.setTitle(requestReturnGuide.getTitle());
                changeIds.add(requestReturnGuide.getId());
            } else {
                store.getReturnGuides().add(
                    ReturnGuid.builder()
                        .imgKey(requestReturnGuide.getImgKey())
                        .title(requestReturnGuide.getTitle())
                        .store(store)
                        .build()
                );
            }
        });
        final List<ReturnGuid> deletedReturnGuides = new ArrayList<>();
        store.getReturnGuides().removeIf(item -> {
                if (item.getId() != null && !changeIds.contains(item.getId())) {
                    deletedReturnGuides.add(item);
                    return true;
                }
                return false;
            }
        );

        return deletedReturnGuides;
    }

    private List<PickupGuid> updatePickupGuides(Store store, UpdateStoreRequest request) {
        final List<Long> savedIds = store.getPickupGuides().stream().map(PickupGuid::getId).toList();
        final Map<Long, Integer> idMapIndex = new HashMap<>();
        final AtomicInteger indexHolder = new AtomicInteger();
        store.getPickupGuides().forEach((el) -> idMapIndex.put(el.getId(), indexHolder.getAndIncrement()));
        final List<Long> changeIds = new ArrayList<>();
        request.getPickupGuids().forEach(el -> {
            if (el.getId() != null && savedIds.contains(el.getId())) {
                final var index = idMapIndex.get(el.getId());
                final var updatedPickupGuid = store.getPickupGuides().get(index);
                updatedPickupGuid.setImgKey(el.getImgKey());
                updatedPickupGuid.setTitle(el.getTitle());
                store.getPickupGuides().set(index, updatedPickupGuid);
                changeIds.add(updatedPickupGuid.getId());
            } else {
                store.getPickupGuides().add(
                    PickupGuid.builder()
                        .imgKey(el.getImgKey())
                        .title(el.getTitle())
                        .store(store)
                        .build()
                );
            }
        });
        final List<PickupGuid> deletedReturnGuids = new ArrayList<>();
        store.getPickupGuides()
            .removeIf(el -> {
                if (el.getId() != null && !changeIds.contains(el.getId())) {
                    deletedReturnGuids.add(el);
                    return true;
                }
                return false;
            });

        storeRepository.save(store);
        return deletedReturnGuids;
    }

    private List<StoreBanner> updateBanners(Store store, UpdateStoreRequest request) {
        final List<StoreBanner> deletedBanners = new ArrayList<>();
        final List<String> saveBannerKeys = new ArrayList<>();
        store.getBanners().removeIf(el -> {
            if (!request.getBanners().contains(el.getImgKey())) {
                deletedBanners.add(el);
                return true;
            }
            saveBannerKeys.add(el.getImgKey());
            return false;
        });
        for (String requestImgKey : request.getBanners()) {
            if (!saveBannerKeys.contains(requestImgKey)) {
                store.getBanners().add(
                    StoreBanner.builder()
                        .imgKey(requestImgKey)
                        .store(store)
                        .build()
                );
            }
        }

        return deletedBanners;
    }
}
