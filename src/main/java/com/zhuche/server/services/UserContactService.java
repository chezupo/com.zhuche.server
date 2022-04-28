package com.zhuche.server.services;

import com.zhuche.server.dto.request.user.contact.CreateUserContactRequest;
import com.zhuche.server.dto.request.user.contact.UpdateUserContactRequest;
import com.zhuche.server.model.Role;
import com.zhuche.server.model.Store;
import com.zhuche.server.model.UserContact;
import com.zhuche.server.repositories.UserContactRepository;
import com.zhuche.server.util.JWTUtil;
import lombok.AllArgsConstructor;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class UserContactService {
    private final UserContactRepository userContactRepository;
    private final JWTUtil jwtUtil;

    public UserContact create(CreateUserContactRequest request) {
        final var me = jwtUtil.getUser();

        return userContactRepository.save(
            UserContact.builder()
                .name(request.getName())
                .relation(request.getRelation())
                .phone(request.getPhone())
                .user(me)
                .build()
        );
    }

    public List<UserContact> getUserContacts() {
        final var me = jwtUtil.getUser();

        return   userContactRepository.findByUserId(me.getId());
    }

    public UserContact updateUserContact(Long id, UpdateUserContactRequest request) {
        final var userContact = userContactRepository.findById(id).get();
        userContact.setName(request.getName());
        userContact.setPhone(request.getPhone());
        userContact.setRelation(request.getRelation());

        return userContactRepository.save(userContact);
    }

    public void deleteUserContact(Long id) {
        userContactRepository.deleteById(id);
    }
}
