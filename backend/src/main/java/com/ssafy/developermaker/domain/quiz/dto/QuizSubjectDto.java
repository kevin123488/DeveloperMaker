package com.ssafy.developermaker.domain.quiz.dto;

import com.querydsl.core.annotations.QueryProjection;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
public class QuizSubjectDto {

    private String subject;
    private Long count;

    @QueryProjection
    public QuizSubjectDto(String subject, Long count) {
        this.subject = subject;
        this.count = count;
    }
}
