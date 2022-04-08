package com.zhuche.server.services;

import com.zhuche.server.config.exception.ExceptionCodeConfig;
import com.zhuche.server.dto.request.user.UpdateUserPasswordRequest;
import com.zhuche.server.exceptions.MyRuntimeException;
import com.zhuche.server.model.User;
import com.zhuche.server.repositories.UserRepository;
import com.zhuche.server.util.AuthUtil;
import com.zhuche.server.util.PasswordEncodeUtil;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncodeUtil passwordEncodeUtil;
    private final AuthUtil authUtil;


    public void updatePassword(Long id,UpdateUserPasswordRequest request) {
        final User user = userRepository.findById(id).get();
        final var me = authUtil.getMe();
        if (authUtil.isAdmin() || me.getId() == user.getId()) {
            user.setPassword(passwordEncodeUtil.encode(request.getPassword()));
            userRepository.save(user);
        } else {
            throw new MyRuntimeException(ExceptionCodeConfig.VALIDATED_ERROR_TYPE, "您无权修改该密码");
        }
    }
}
