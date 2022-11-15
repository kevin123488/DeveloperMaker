package com.ssafy.developermaker.domain.quiz.dto;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class QuizSubmitDto {
    private String answer;
    private boolean result;
}
