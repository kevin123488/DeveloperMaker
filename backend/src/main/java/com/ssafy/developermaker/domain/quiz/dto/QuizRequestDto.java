package com.ssafy.developermaker.domain.quiz.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;

@Getter
public class QuizRequestDto {
    @ApiModelProperty(name="정답", example="가")
    String answer;
}
