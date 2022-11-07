package com.ssafy.developermaker.domain.quiz.dto;

import com.ssafy.developermaker.domain.study.entity.Category;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class QuizDto {
    private Category category;
    private String subject;
    private List<QuizInfoDto> quizInfo;
    private long totalCount;
    private int totalPage;

    public QuizDto(Category category, String subject, long totalCount,int totalPage) {
        this.category = category;
        this.subject = subject;
        this.totalCount = totalCount;
        this.totalPage = totalPage;
    }
}
