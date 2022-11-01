package com.ssafy.developermaker.domain.study.repository;

import com.ssafy.developermaker.domain.study.dto.StudyCategoryResponseDto;

import java.util.List;

public interface StudyRepositoryCustom {
    List<StudyCategoryResponseDto> getStudyList();
}
