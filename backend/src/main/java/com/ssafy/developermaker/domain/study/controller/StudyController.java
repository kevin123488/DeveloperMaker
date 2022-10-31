package com.ssafy.developermaker.domain.study.controller;

import com.ssafy.developermaker.domain.study.application.StudyService;
import com.ssafy.developermaker.domain.study.entity.Category;
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

    @GetMapping("/{category}")
    @ApiOperation(value = "학습 리스트 조회", notes = "학습 리스트를 반환함.")
    public ResponseEntity<BaseResponseBody> getStudyList(@PathVariable Category category){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", studyService.getStudyList(category)));
    }
}
