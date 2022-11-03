package com.ssafy.developermaker.domain.study.dto;

import com.ssafy.developermaker.domain.study.entity.Category;
import lombok.*;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class StudyDto {

    private Category category;
    private String subject;
    private List<StudyInfoDto> studyInfo;
    private long totalCount;
    private int totalPage;

    public StudyDto(Category category, String subject, long totalCount,int totalPage) {
        this.category = category;
        this.subject = subject;
        this.totalCount = totalCount;
        this.totalPage = totalPage;
    }
}
