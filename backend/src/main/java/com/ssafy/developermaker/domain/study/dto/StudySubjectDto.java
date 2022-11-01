package com.ssafy.developermaker.domain.study.dto;

import com.querydsl.core.annotations.QueryProjection;
import com.querydsl.core.types.dsl.NumberExpression;
import com.querydsl.core.types.dsl.StringPath;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
public class StudySubjectDto {
    private String subject;
    private Long count;

    @QueryProjection
    public StudySubjectDto(String subject, Long count) {
        this.subject = subject;
        this.count = count;
    }
}
