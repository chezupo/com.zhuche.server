package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.request.feedback.CreateFeedbackRequest;
import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.services.CommentService;
import com.zhuche.server.services.FeedbackService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController("miniProgramFeedback")
@RequestMapping("/api/v1/miniProgram/feedbacks")
@Slf4j
@Validated
@AllArgsConstructor
public class Feedback {
    private FeedbackService feedbackService;

    @PostMapping
    public UnityResponse createFeedback(
        @RequestBody @Valid CreateFeedbackRequest request
    ) {
        final com.zhuche.server.model.Feedback feedback = feedbackService.createFeedback(request);

        return UnityResponse.builder().data(feedback).build();
    }
}
