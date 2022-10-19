package com.ssafy.developermaker.domain.study.application;

import com.ssafy.developermaker.domain.study.dto.StudyResponseDto;
import com.ssafy.developermaker.domain.study.entity.Study;
import com.ssafy.developermaker.domain.study.repository.StudyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
@RequiredArgsConstructor
public class StudyService {
    private final StudyRepository studyRepository;

    public List<StudyResponseDto> getStudyList(String email, String subject){
        List<Study> studyList = studyRepository.findAll();
        studyRepository.countBySubject(subject);
        List<StudyResponseDto> studyResponseDtoList = new ArrayList<>();
        Collections.sort(studyList, (o1, o2) -> (int)(o1.getOrders() - o2.getOrders()));
        for(Study study : studyList){
            studyResponseDtoList.add()
        }

        return studyResponseDtoList;
    }

}
