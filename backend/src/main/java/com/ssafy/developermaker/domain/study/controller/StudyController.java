package com.ssafy.developermaker.domain.study.controller;

import com.ssafy.developermaker.domain.study.application.StudyService;
import com.ssafy.developermaker.domain.study.dto.StudyRequestDto;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RequestMapping("/study")
@RequiredArgsConstructor
public class StudyController {
    private final StudyService studyService;

    @GetMapping
    @ApiOperation(value = "학습 리스트 조회", notes = "학습의 대분류, 소분류, 소분류 별 갯수를 반환")
    public ResponseEntity<BaseResponseBody> getStudyList(){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", studyService.getStudyList()));
    }

    @PostMapping
    @ApiOperation(value = "학습 상세 조회 페이징처리", notes = "학습 과목의 상세 리스트 페이징처리 조회")
    public ResponseEntity<BaseResponseBody> getStudyPage(@RequestBody StudyRequestDto studyRequestDto) {
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", studyService.getStudyPage(studyRequestDto)));
    }
}
