/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/18
 * Listen  MIT
 */

package com.zhuche.server.validators.banners;

import com.zhuche.server.repositories.BannerRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Slf4j
@RequiredArgsConstructor
public class HasBannerIdWiring implements ConstraintValidator<HasBannerId, Integer> {
    private final BannerRepository bannerRepository;
    @Override
    public boolean isValid(Integer value, ConstraintValidatorContext context) {
        var res = bannerRepository.findById((long) value);
        return res.isPresent();
    }
}
