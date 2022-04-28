package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.request.user.contact.CreateUserContactRequest;
import com.zhuche.server.dto.request.user.contact.UpdateUserContactRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.UserContactService;
import com.zhuche.server.validators.user.contact.CheckUserContactMustBelongMe;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController("miniProgramUserContact")
@RequestMapping("/api/v1/miniProgram/userContacts")
@AllArgsConstructor
@Validated
public class UserContact {
    private final UserContactService userContactService;

    @PostMapping
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse createUserContact(
        @RequestBody @Valid CreateUserContactRequest createUserContactRequest
    ) {
        final com.zhuche.server.model.UserContact userContact =  userContactService.create(createUserContactRequest);
        return UnityResponse.builder()
            .data(userContact)
            .build();
    }

    @GetMapping
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse createUserContact( ) {
        final List<com.zhuche.server.model.UserContact> userContacts =  userContactService.getUserContacts();
        return UnityResponse.builder()
            .data(userContacts)
            .build();
    }

    @PutMapping("/{id}")
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse updateUserContact(
        @PathVariable("id") @CheckUserContactMustBelongMe Long id,
        @RequestBody @Valid UpdateUserContactRequest request
    ) {
        final com.zhuche.server.model.UserContact userContact =  userContactService.updateUserContact(id, request);
        return UnityResponse.builder()
            .data(userContact)
            .build();
    }

    @DeleteMapping("/{id}")
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse updateUserContact(
        @PathVariable("id") @CheckUserContactMustBelongMe Long id
    ) {
        userContactService.deleteUserContact(id);
        return UnityResponse.builder()
            .build();
    }
}
