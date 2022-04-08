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
import java.sql.Timestamp;
import java.time.LocalDateTime;
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
    private final BrandRepository brandRepository;
    private final StoreCarConfigRepository carConfigRepository;
    private final BrandSeriesRepository brandSeriesRepository;
    private final CarCategoryRepository carCategoryRepository;

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
        // 添加品牌数据和车系
        Brand newBrand = brandRepository.save(
            Brand.builder()
                .name("丰田")
                .imgKey("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==")
                .store(newStore)
                .build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("亚洲狮").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("普拉多").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("普拉多").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("卡罗拉").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("RAV4荣放").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("雷凌").brand(newBrand).build());
        newBrand = brandRepository.save(
            Brand.builder()
                .name("别克")
                .imgKey("data:image/jpeg;base64,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")
                .store(newStore)
                .build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("GL8").brand(newBrand).build());
        newBrand = brandRepository.save(
            Brand.builder()
                .name("大众")
                .imgKey("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAWAAEBAQAAAAAAAAAAAAAAAAAJCAr/xAAjEAABBQEBAAEEAwAAAAAAAAAGAgMEBQcBCBIACREUExUi/8QAGAEAAwEBAAAAAAAAAAAAAAAABAYHBQP/xAAkEQACAwACAgMAAwEBAAAAAAABAwIEBQYRABITFCEjMUEVMv/aAAwDAQACEQMRAD8A2P8ApP05Nz64bz0Fk1dVfNviSDfQyGisSQZzGEcWEmAM8foa2dVvEJNdcgWVhCqXraprK6mrpVzcT+Nqrq+0euM8WToIjpaSrNiu+VxWZlUnqrXdh1BMX3JRsuW2FSjUgxYfYCXtY1i69ZMpFjEpnIuSMotlQoMrocmNVmjp21NfUylXGzTVjJCprlZuWZLbJKC5K1qUxz2RiIQYcJF719F4KR0r5sQv6HPuNN0IFh+fzDOxYfPdIpsur4dkdF2QGue2LVVTOVrE6K2M0h/S2VSXz3eVLJVUrc5ZodG8Q47q573086Gcqri0NexuZmtbvUMc6DzXp09ypqV1tlNrYEWG574MqxBsfUdGM4BQhyjdydKvXuaMr7buxcyKmLpZVWnd1ZUE/Pcs49rNfOEYQT1Kuq/Xmqyf4vtxnKBLZZFqoTuOYguv5xbovQXRhmpLBe1S24wqTVW8VuSwmTGd4l6JOjKUuJYQn0pkQZzEiI+lLzK08jd2nYzrdmjbh6WajmIdEEEBi5GMjEgkShLr2hIEiUSJA/vlbrWU3K6bVeful64sXIj1JjIAj2iSTGQ76lEnuJBB/R4GHuGQTCXqgmzAjnzh8W9MI7MCL19MhVJcvy86GBPsuDxKks2RZhWi52IFFkMNq5czs00kntKVPWIF0puxcY1KC+PZGxD0lc4mt0HolIgrZDWnowDh7fx09zOu3aAeQYKv0662yjJiDKTchzNFu3sZk4zNHkzqsluiB2UzyoZ7JR/B8lrH0KlS98Mepsp27JXEhTOy09R7tnNzbt70F6VoBJd47S1/jxmQUxpTttDsRorQ6ZasEIbiR3ZCtFE3pw0AUUFmbc2xORMNx5Up7+NcPenfsUqFjjdvKzKyeWvPOgrPZEmwh9d4y8G5ETmIxp6BTcvumYKTVSybICJA8x0469LYq8iq6mjYfxREuFxOgswhUsxso/6m9SMhEtFjP+apUhH2mywxYEiQB5pt+2TlZ7jfhzBQnT6h8aPFUF0WkQlJ/H7AZL0EsvjpoOkJSpSWpQvEIo9LMYR34MTIb7KPylvnexDkVlNvYtMrt+dKxXqwsd9/Y+nWTVL+z2SGySZgkkkEE/pPloy0Tr0UwnD45yLXSV118Re2bvi6/wA9Pf16/fXrrv8APKZ2jCch9EBMrOdsz8c0YMlSo1h/SkULkhEK0g9WqBc1ExpTNjSXcBTi1QLmolwrOH1a+xpTfzX8gKOhdzLAtULLarxCSzNUuvdc+vdbInuLFzA6kuYlCQ/JRI8Is1a1xRTaSt6uxIRZEH1kP0Sif/UJA9ESiRIEAg9geTDlX2yfF2QH1LqA7krpAeC0n9wOI9KNDjUpQVL4nqETA9g/ISCEPWDSO/FizrYrNlHT/lmW2nvedOfyDTehtcNRWS8etiFGnTo/ZH9kWJVEJk2JJ7MJH0J/uJ84LzKi5xZ6MbNZ7UbD3WfiPXQKvnYwQIH4DHqQ/wAI8vf6xfD/AD//2Q==")
                .store(newStore)
                .build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("探岳四驱").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("高尔夫").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("探岳俩驱").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("高尔夫.嘉族").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("帕萨特").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("宝来").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("探歌").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("朗逸").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("迈腾").brand(newBrand).build());
        newBrand = brandRepository.save(
            Brand.builder()
                .name("奔驰")
                .imgKey("data:image/jpeg;base64,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")
                .store(newStore)
                .build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("SUV").brand(newBrand).build());
        newBrand =  brandRepository.save(
            Brand.builder()
                .name("日产")
                .imgKey("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAIAAkK/8QAIBAAAgMBAQEAAwEBAAAAAAAABAUDBgcCAQgAExQJF//EABgBAAMBAQAAAAAAAAAAAAAAAAACAwQB/8QAJBEBAAICAgICAQUAAAAAAAAAAQIRACESMSJBA1GRE2FxgfD/2gAMAwEAAhEDEQA/AOLjNviTeNDwux/URKNfn/zZVXQ1cZ7VoR/SGpnPyWIyvxJVBIhzrJdWUJhP6CYaqjbQjTjmCEERGizDcvGEpCmoxrlJviX0KDt9Hbhigu3+Rm7Vm7ZPl9c0zFdB0/bEz5pndHSurhWznbGrBf22Wk9OdCpdQqwGioPOxRnNHYvRHyss8CA8UbouL3qkvglEPKEuRoFt0KAxNl7OzSheP+m0NlvRu39uqs9l5m5o+b33IL3acx1CovaJoFJbkobXUbMvnWO0bUT3z9opoZHPPXnncfcZApEfsgpocw5oUxAZEE8kOsTrHR/3B/ouYYZDnWzd5/ccRyOfELRk9rthlUrl7pc12slw5OqTvucasED2ciySqbrUXPaQ2AyIJ8G1sQzZ1zU9BN4w4TIyjGUJQaBFlLlb4y5CCO/GJvVdL9f7+b1+cXP1/YbCx58WUXeqxnynUtr+odY0KzttSm4GUVrZ+8lklz4gKv3bRLJdOwIqkea7fipCrTd5oQ+WxzwsRONDX55aIxnCpSnLXA4wmQIxaOXIpJ0bouw1VUhGJIB5XdFReNX7t3dGyu6zMf632dRuGpq3yA+xPEdMzHL8kU2m28cw2a5L8spiunC2x0F4Wy6VEu4lnJMKWRw8kSg/yKvXTPkPkqTL8jFl42gEbSmVFMq3Vu6tftyckXXQBf3RV/3+cMH4mLl+GGX4YZ//2Q==")
                .store(newStore)
                .build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("劲客").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("天籁").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("奇骏").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("轩逸").brand(newBrand).build());

        newBrand = brandRepository.save(
            Brand.builder()
                .name("本田")
                .imgKey("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAaAAACAgMAAAAAAAAAAAAAAAAHCAABBgkK/8QAJRAAAgMBAAIBAgcAAAAAAAAAAwQBAgUGBxEAITEIEhQWUYGR/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAQFBgMH/8QAJBEAAgICAgIBBQEAAAAAAAAAAQIDBAAFBhIREwcUFSEjMST/2gAMAwEAAhEDEQA/AO+Dd2lufzi6TQmTiHYY6gTBLDRilvFKUEGLV/NP1m1pm1a0pW97TFYmYYzBc3yvh6TnPKUz9gX7lzldRFiyyx11lHywujOoRNxic0rjNWFgBZrUlmEnRTFbLE9MYUvjGKV5X/EXy+M/t8THPeQSbmQd+1NBbgdrX5kjGIDnmjjJpp3AKQug6VddEg2KkMyvofpxs3zzLkqJ9zXrzSQPBdZo/Z5dKsjRfqEBb9gHUE+9QgJBYq4H5Q56fpvije7zU1dxW2/E4K9xabRV7nIqFa+Bdk2kUfek7/UL6jqZ3snoRXjmqyOQlhDiq+LvLu7hdZm6fcY2vTOUQxeX37Yvizv50tzoz9N1PRr9AKmmojGJjLSvpENjAtv0xG9ttthyXdyFQ8jv6g8g1tgpEqRktTlXx3DkHwQCVAjZmIHlfwCAT4ya3w1yEIWXfcIl/wAdm4oi5ZqpAyVRSDxd1l6JNJJejjrJIyCz67EkLPDC0mbGPHflDnvJXPz0WOp0GUCjx88yHTYOlgaoTgEuxW9kXwDLK7KjarSrFIsMoT1+tSVIOlhUuxXIvdGs0Y7shWeJ4pAQAQejgHqysrK38IYfw+QMVyTiez4vsvtt2bWXZDXjspZ1GyqbSk8cjSRlVs1ZHj9sU0MsM0RIeOSNgQVKsxG9RP3iJ/r5MzMZPUfxH+R8Yy/UR9o9fGM//9k=")
                .store(newStore).build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("新飞度").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("奥德赛").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("缤智").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("凌派").brand(newBrand).build());

        newBrand = brandRepository.save(
            Brand.builder()
                .name("爱驰")
                .imgKey("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAACAkHCv/EACoQAAAGAgEDBAAHAAAAAAAAAAECAwQFBgcICQATIREUFTFBUVNhcZPR/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAED/8QAIxEAAgECBAcAAAAAAAAAAAAAAAERAjETYbHhQVFxgZGh0f/aAAwDAQACEQMRAD8A6UdqOZnjz0vzuOt2w2YbBTcrpxtSlXUW2xneJyHaMbq2RdwblexRcUvEAiZuuRV2qVyYjMoH9wKZkzlKMlRKTm+W4yW7e9OrXHrjir5X2dyK7q9JuFybUKDka3VJ+7rL2R3CTNhQauGdYayK7JBWLgZJYjt0VNA50QRIYyhylEXDz9bml6ubE4f3JwnUdhcBWZ7Z8XXf5QK9Myldmay8dGhpR3DyAKRE42ZyCBUnzJdMiiiIJrEKCiRjFH16Ew3wa0+koOQOtchNwz/b2GHOQk2vOtB6TU4eyYyc6OWzKyJGb2AYNbujF5Vak+KnX9gaSaq6KDdVMkKq5+PcqJnbCYw0psui0FmS41sCatRkvbuGG9ZC0OzVNOIuuZLyvf8AXDPefq9kbEiiT2VLVK5FWRoMax7lqZV2wnuDVE6BGsQrH++QRfLd0UuboBM5dndWMdv86ZpW2Byd3LEhYspL4bmcDGnhRn5ArJIuOJ4iUjGEjmIt2JXqqSZJTsi8TIBT+QGaBdYAAAVVAA+gBQ4AAfkAevgPTx0MJas2u4d9f9ZX+w/+9BL5vyw7yv4nOb9zGMI/x5H66Elu7k//2Q==")
                .store(newStore)
                .build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("U5").brand(newBrand).build());
        newBrand = brandRepository.save(
            Brand.builder()
                .name("现代")
                .imgKey("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIABQAFAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAAABwkICv/EACAQAAIDAQEAAgMBAAAAAAAAAAMEAgUGAQcACBMUFRH/xAAYAQEBAQEBAAAAAAAAAAAAAAAABAUDBv/EACIRAAICAgIDAAMBAAAAAAAAAAECAxEABAUSExQhBhUigf/aAAwDAQACEQMRAD8A7t/RPTsn5fSu3upbOFVCnutAyFNabjQ6POLDcvrgoodjFerqFygm++yQKoJsqAkX9htYJmMXqv2PxnS5Je4q9JnW9sqm5RVlmgoxfSVdHAkGbHOU9hZ39Wqv2f4Xm3a0SiDMZAcOEv8AkJMY/wARRHHAwSQKIsIkGUcuTGQc48lCcJx72M4Tj3koyj3sZR7zvO9534xk/ftpt6eztz+eMeb/AGUtXl6FiJtN5ViVrzH2lVYuZVo9JcGsLBNS1jF01cxNVciVqmOvtzIWKf4mST3NLhDu6y7P7Li9YM5TxbW0Y5wQJTfjEbEqfEQCLHZkU0WGRT7ggcp6+1KVTuWii7JX8fA5YKWBcAi/lEmhROHM1r8V53uV/UK/6/8A2IEpV5exzdCHyv6vL5ayuwFUs7m3t2LnS+gbXfP6Jz+QGkK1Zs15GyNUp6RZeSVjZS0o/wASkdlQ83wEbkqHD8gAsZd40W5BGYmBEhYsjsFVGDEMVVp25VVs+lvkfarXJsAMSQLuh1I+gWSKsWRZPxfepejYCr0Fdh9n50oAzdEHJbyk/gaCsjRF/m8hNCLTo5IyiDn6DYWjAbWjA4ZyHKMu+e5DS9DZOv7OttgIjifUkMsLCRewpiqnsAf6UqCp+EXl+vN7EYk8csVkjpMvSQUaNrZ/wgkEfbxrfIs7YfGMPjGf/9k=")
                .store(newStore)
                .build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("IX35").brand(newBrand).build());
        brandSeriesRepository.save(BrandSeries.builder().name("领动").brand(newBrand).build());
        newBrand  = brandRepository.save(
            Brand.builder()
                .name("荣威")
                .imgKey("data:image/jpeg;base64,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")
                .store(newStore)
                .build()
        );
        brandSeriesRepository.save(BrandSeries.builder().name("ERX5").brand(newBrand).build());
        // 添加汽车配置
        this.carConfigRepository.save(
            StoreCarConfig.builder()
                .name("倒车雷达")
                .store(newStore)
                .build()
        );
        this.carConfigRepository.save(
            StoreCarConfig.builder()
                .name("倒车影像")
                .store(newStore)
                .build()
        );
        this.carConfigRepository.save(
            StoreCarConfig.builder()
                .name("雪地胎")
                .store(newStore)
                .build()
        );
        this.carConfigRepository.save(
            StoreCarConfig.builder()
                .name("行车记录仪")
                .store(newStore)
                .build()
        );
        // 添加汽车分类数据
        final List<CarCategory> newCarCategoryList = new ArrayList<CarCategory>(){{
            add(
                CarCategory.builder()
                    .name("经济型")
                    .store(newStore)
                    .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                    .build()
            );
            add(
                CarCategory.builder()
                    .name("舒适型")
                    .store(newStore)
                    .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                    .build()
            );
            add(
                CarCategory.builder()
                    .name("精英型")
                    .store(newStore)
                    .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                    .build()
            );
            add(
                CarCategory.builder()
                    .name("SUV")
                    .store(newStore)
                    .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                    .build()
            );
            add(
                CarCategory.builder()
                    .name("5-15座商务")
                    .store(newStore)
                    .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                    .build()
            );
            add(
                CarCategory.builder()
                    .name("电动型")
                    .store(newStore)
                    .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                    .build()
            );
            add(
                CarCategory.builder()
                    .name("高端车")
                    .store(newStore)
                    .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                    .build()
            );
        }};
        carCategoryRepository.saveAll(newCarCategoryList);

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
