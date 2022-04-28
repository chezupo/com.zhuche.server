package com.zhuche.server.dto.request.user.contact;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.NotBlank;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class CreateUserContactRequest {
    @NotBlank
    private String name;

    @NotBlank
    private String phone;

    @NotBlank
    private String relation;
}
