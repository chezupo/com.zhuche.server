package com.zhuche.server.services;

import com.zhuche.server.dto.request.feedback.CreateFeedbackRequest;
import com.zhuche.server.dto.response.PageFormat;
import com.zhuche.server.model.Feedback;
import com.zhuche.server.repositories.FeedbackRepository;
import com.zhuche.server.util.PaginationUtil;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@Service
@AllArgsConstructor
public class FeedbackService {
    private final FeedbackRepository feedbackRepository;
    private final PaginationUtil paginationUtil;

    public Feedback createFeedback(CreateFeedbackRequest request) {
        return feedbackRepository.save(
            Feedback.builder()
                .content(request.getContent())
                .email(request.getEmail())
                .flag(request.getFlag())
                .phone(request.getPhone())
                .createdAt(Timestamp.valueOf(LocalDateTime.now()).toInstant().toEpochMilli())
                .build()
        );
    }

    public PageFormat getPageData(Integer page, Integer size) {
        return paginationUtil.getPageFormat(feedbackRepository, page, size );
    }
}
