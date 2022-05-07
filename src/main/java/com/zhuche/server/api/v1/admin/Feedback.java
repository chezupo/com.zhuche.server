package com.zhuche.server.api.v1.admin;

import com.zhuche.server.config.interceptors.Permission;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Role;
import com.zhuche.server.services.FeedbackService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.repository.query.Param;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.constraints.Min;

@RestController("feedbackApi")
@RequestMapping("/api/v1/feedbacks")
@Slf4j
@RequiredArgsConstructor
@Validated
public class Feedback {
    private final FeedbackService feedbackService;

    @GetMapping
    @Permission(roles = {Role.ROLE_ADMIN})
    public UnityResponse getFeedbacks(
        @Param("page") @Min(1) Integer page,
        @Param("size") Integer size
    ) {
       final PageFormat pageData =  feedbackService.getPageData(page, size);

       return UnityResponse.builder().data(pageData).build();
    }
}
