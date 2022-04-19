/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/3/27
 * Listen  MIT
 */

package com.zhuche.server.dto.request.car;


import com.zhuche.server.model.CarEngineType;
import com.zhuche.server.model.CarPowerType;
import com.zhuche.server.model.CarShift;
import com.zhuche.server.model.StoreCarConfig;
import com.zhuche.server.validators.car.StoreBrandSeriesMustBeExisted;
import com.zhuche.server.validators.car.category.CheckCarCategoryIdMustBeExist;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.*;
import java.util.List;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreateCarRequest {

    @NotNull
    private CarPowerType powerType;

    @NotNull
    private Boolean isSelfHelp;

    @NotNull
    @Min(0)
    private Float displacement; //  排量

    @NotNull
    private CarShift shift;

    @NotNull
    @Min(0)
    private float gasVolume; // 油量

    @NotNull
    @Min(1)
    private Integer seats; // 座椅数

    @NotNull
    private CarEngineType engineType;

    @NotNull
    private String name;

    @NotBlank
    private String cover;

    @NotBlank
    private String type; // 车型

    @NotEmpty
    private List<String> tags;

    @NotBlank
    private String number; // 车牌号

    @NotNull
    @StoreBrandSeriesMustBeExisted
    private Long seriesId;

    @NotNull
    private Float rent;

    @NotNull
    private List<Long> configIds;

    @NotNull
    private Float deposit;

    @NotNull
    private Boolean isOnline;

    @NotNull
    @CheckCarCategoryIdMustBeExist
    private Long carCategoryId;

    @NotNull
    @Min(0)
    @Digits(integer = 10 /*precision*/, fraction = 2 /*scale*/)
    private Float insuranceFee;

    @NotNull
    @Min(0)
    @Digits(integer = 10 /*precision*/, fraction = 2 /*scale*/)
    private Float handlingFee;
}
