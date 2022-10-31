package com.ssafy.developermaker.domain.study.application;

import com.ssafy.developermaker.domain.study.dto.StudyResponseDto;
import com.ssafy.developermaker.domain.study.entity.Category;
import com.ssafy.developermaker.domain.study.entity.Study;
import com.ssafy.developermaker.domain.study.repository.StudyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
public class StudyService {
    private final StudyRepository studyRepository;

    public List<StudyResponseDto> getStudyList(Category category) {
        List<Study> studyList = studyRepository.findByCategory(category);
        return studyList.stream().map(Study::toDto).collect(Collectors.toList());
    }

}
