package com.ssafy.developermaker.domain.quiz.dto;

import com.ssafy.developermaker.domain.study.entity.Category;
import lombok.*;

import java.util.List;
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class QuizCategoryResponseDto {
    private Category category;
    private List<QuizSubjectDto> subjectList;
}
