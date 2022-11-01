package com.ssafy.developermaker.domain.study.application;

import com.ssafy.developermaker.domain.study.dto.*;
import com.ssafy.developermaker.domain.study.entity.Category;
import com.ssafy.developermaker.domain.study.entity.Study;
import com.ssafy.developermaker.domain.study.repository.StudyRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class StudyService {
    private final StudyRepository studyRepository;

    public List<StudyCategoryResponseDto> getStudyList() {
        return studyRepository.getStudyList();
    }

    public StudyDto getStudyPage(StudyRequestDto studyRequestDto) {
        PageRequest pageRequest = PageRequest.of(studyRequestDto.getOffset(), studyRequestDto.getLimit());
        Page<Study> page = studyRepository.findByCategoryAndSubject(pageRequest, studyRequestDto.getCategory(), studyRequestDto.getSubject());

        StudyDto studyDto = new StudyDto(studyRequestDto.getCategory(), studyRequestDto.getSubject(), page.getTotalElements() ,page.getTotalPages());
        List<StudyInfoDto> studyInfoDtoList = page.stream().map(study -> new StudyInfoDto(study.getTitle(), study.getContent())).collect(Collectors.toList());
        studyDto.setStudyInfo(studyInfoDtoList);
        return studyDto;

        // Page<Study>로 repsonse
        // return studyRepository.findOrderByCategoryAndSubject(pageRequest, studyRequestDto.getCategory(), studyRequestDto.getSubject());
    }
}
