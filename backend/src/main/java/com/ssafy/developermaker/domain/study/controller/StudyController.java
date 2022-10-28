package com.ssafy.developermaker.domain.study.controller;

import com.ssafy.developermaker.domain.study.application.StudyService;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RequestMapping("/study")
@RequiredArgsConstructor
public class StudyController {
    private final StudyService studyService;

    @GetMapping("/{subject}")
    public ResponseEntity<BaseResponseBody> getStudyList(@PathVariable String subject){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", studyService.getStudyList(subject)));
    }
}
