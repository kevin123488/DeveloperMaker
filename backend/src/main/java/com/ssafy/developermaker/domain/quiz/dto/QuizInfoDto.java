package com.ssafy.developermaker.domain.quiz.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class QuizInfoDto {
    private String title;
    private String problem;
    private String example;
    private Integer correct;
}
