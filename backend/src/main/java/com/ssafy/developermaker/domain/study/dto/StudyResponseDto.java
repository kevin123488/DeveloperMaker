package com.ssafy.developermaker.domain.study.dto;

import lombok.Builder;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Builder
public class StudyResponseDto {
    private Long studyId;
    private String subject;
    private String title;
    private Integer orders;
    private String content;
}
