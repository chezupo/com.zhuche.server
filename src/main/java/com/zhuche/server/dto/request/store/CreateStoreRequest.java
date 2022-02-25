package com.zhuche.server.dto.request.store;

import javax.validation.constraints.NotBlank;

public class CreateStoreRequest {
    @NotBlank
    private String username;

    @NotBlank
    private String password;

    @NotBlank
    private String name;

    private String mark;

    @NotBlank
    private String starAt;

    @NotBlank
    private String endAt;

    @NotBlank
    private String address;

    @NotBlank
    private String servicePhone;

    @NotBlank
    private Integer lat;

    @NotBlank
    private Integer lng;

    @NotBlank
    private Boolean isStation;

    @NotBlank
    private Boolean isAirport;

    @NotBlank
    protected Boolean isSelfService;
}
