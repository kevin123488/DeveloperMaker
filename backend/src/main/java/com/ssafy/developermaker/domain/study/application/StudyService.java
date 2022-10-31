package com.ssafy.developermaker.domain.study.application;

import com.ssafy.developermaker.domain.study.dto.StudyInfoDto;
import com.ssafy.developermaker.domain.study.dto.StudyRequestDto;
import com.ssafy.developermaker.domain.study.dto.StudyResponseDto;
import com.ssafy.developermaker.domain.study.entity.Study;
import com.ssafy.developermaker.domain.study.repository.StudyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class StudyService {
    private final StudyRepository studyRepository;

    public List<StudyResponseDto> getStudyList() {
        List<Study> studyList = studyRepository.findAll();
//        Enum<Category> categoryEnum
//        return studyList.stream().map(Study::toDto).collect(Collectors.toList());
        return null;
    }

    public StudyInfoDto getStudyPage(StudyRequestDto studyRequestDto) {
        PageRequest pageRequest = PageRequest.of(studyRequestDto.getOffset(), studyRequestDto.getLimit());
        Page<Study> pages = studyRepository.findByCategoryAndSubject(pageRequest, studyRequestDto.getCategory(), studyRequestDto.getSubject());

        StudyInfoDto
    }
}
