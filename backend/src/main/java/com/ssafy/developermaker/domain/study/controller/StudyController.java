package com.ssafy.developermaker.domain.study.controller;

import com.ssafy.developermaker.domain.study.application.StudyService;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RequestMapping("/Study")
@RequiredArgsConstructor
public class StudyController {
    private final StudyService studyService;

    @GetMapping
    public ResponseEntity<BaseResponseBody> getAlbum(){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", null));
    }
}
