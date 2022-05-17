package com.zhuche.server.api.v1.mini.program;

import com.zhuche.server.dto.response.UnityResponse;
import com.zhuche.server.model.Comment;
import com.zhuche.server.services.CarService;
import com.zhuche.server.services.CommentService;
import com.zhuche.server.validators.car.CheckCarIdMustBeExist;
import lombok.AllArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController("miniProgramCar")
@RequestMapping("/api/v1/miniProgram/cars")
@AllArgsConstructor
@Validated
public class Car {
    private final CommentService commentService;
    private final CarService carService;

    @GetMapping("/{id}/comments")
    public UnityResponse getCarComments(
        @PathVariable("id") @CheckCarIdMustBeExist Long id
    ) {
       final List<Comment> comments = commentService.getCarsCommentsById(id);
       return UnityResponse.builder()
           .data(comments)
           .build();
    }

    @GetMapping("/{id}")
    public UnityResponse getCar(
        @PathVariable("id") @CheckCarIdMustBeExist Long id
    ) {
        final com.zhuche.server.model.Car car = carService.getCarsById(id);
        return UnityResponse.builder()
            .data(car)
            .build();
    }
}
