package com.ssafy.developermaker.domain.codingtest.dto;

import com.ssafy.developermaker.domain.quiz.dto.QuizInfoDto;
import com.ssafy.developermaker.domain.study.entity.Category;
import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CoteListResponseDto {

    private Category category;
    private String subject;
    private List<CoteInfoDto> coteInfoList;
    private long totalCount;
    private int totalPage;

    public CoteListResponseDto(long totalCount, int totalPage) {
        this.category = Category.ALGORITHM;
        this.subject = "algorithm";
        this.totalCount = totalCount;
        this.totalPage = totalPage;
    }
}
