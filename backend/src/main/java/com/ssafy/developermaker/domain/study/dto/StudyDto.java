package com.ssafy.developermaker.domain.study.dto;

import com.ssafy.developermaker.domain.study.entity.Category;
import lombok.Getter;

import java.util.List;

@Getter
public class StudyDto {

    private Category category;
    private String subject;
    private List<StudyInfoDto> studyInfo;
    private int totalCount;
}
