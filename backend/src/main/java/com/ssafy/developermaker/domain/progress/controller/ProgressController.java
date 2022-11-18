package com.ssafy.developermaker.domain.progress.controller;

import com.ssafy.developermaker.domain.progress.application.ProgressService;
import com.ssafy.developermaker.domain.progress.dto.ProgressDto;
import com.ssafy.developermaker.domain.progress.dto.RankingDto;
import com.ssafy.developermaker.domain.progress.dto.RankingResponseDto;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@Slf4j
@RequestMapping("/progress")
@RequiredArgsConstructor
public class ProgressController {

    private final ProgressService progressService;

    @GetMapping
    @ApiOperation(value = "유저 진행도 확인")
    public ResponseEntity<BaseResponseBody> getProgress (@AuthenticationPrincipal String email) {
        ProgressDto progressDto = progressService.getProgress(email);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", progressDto));
    }


    @GetMapping("/rank")
    @ApiOperation(value = "랭킹확인")
    public ResponseEntity<BaseResponseBody> getRanking() {
        RankingResponseDto rankList = progressService.getRankList();
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", rankList));
    }



}
