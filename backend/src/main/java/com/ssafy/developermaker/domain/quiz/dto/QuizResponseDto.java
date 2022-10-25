package com.ssafy.developermaker.domain.quiz.dto;

import lombok.Builder;
import lombok.Setter;

import javax.persistence.Column;

@Builder
@Setter
public class QuizResponseDto {
    private Long quizId;
    private Integer no;
    private String subject;
    private String title;
    private String problem;
    private String example;
    private String answer;
    private Integer correct = 0; // 0(푼적없음), -1(틀림), 1(맞춤), 2(다시풀어서 맞춤)
}
