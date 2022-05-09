package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.ViolationService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController("miniProgramViolation")
@RequestMapping("/api/v1/miniProgram/violations")
@Slf4j
@Validated
@AllArgsConstructor
public class Violation {
    private final ViolationService violationService;

    @GetMapping
    @Permission(roles = {Role.ROLE_USER})
    public UnityResponse getViolation( ) {
       List<com.zhuche.server.model.Violation> violations =  violationService.getMyViolations();
       return UnityResponse.builder()
           .data(violations)
           .build();
    }
}
