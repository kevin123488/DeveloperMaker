package com.ssafy.developermaker.domain.quiz.controller;

import com.ssafy.developermaker.domain.quiz.application.QuizService;
import com.ssafy.developermaker.domain.quiz.dto.QuizListRequestDto;
import com.ssafy.developermaker.domain.quiz.dto.QuizRequestDto;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
@RequestMapping("/quiz")
@RequiredArgsConstructor
public class QuizController {
    private final QuizService quizService;

    @GetMapping
    @ApiOperation(value = "퀴즈 리스트 조회", notes = "퀴즈의 대분류, 소분류, 소분류 별 갯수를 반환")
    public ResponseEntity<BaseResponseBody> getList(){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", quizService.getQuizList()));
    }

    @PostMapping
    @ApiOperation(value = "퀴즈 상세 리스트 조회",
            notes = "퀴즈의 소분류 별 상세내용 및 유저정답여부 반환 (안품 : 0, 틀림 : -1, 맞춤 : 1")
    public ResponseEntity<BaseResponseBody> getList(@AuthenticationPrincipal String email,
                                                    @RequestBody QuizListRequestDto quizListRequestDto){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", quizService.getQuizPage(email, quizListRequestDto)));
    }

    @PostMapping("/submit")
    @ApiOperation(value = "퀴즈 정답 제출", notes = "정답 여부를 String으로 반환함. Ex) '정답입니다!'")
    public ResponseEntity<BaseResponseBody> submitQuiz(@AuthenticationPrincipal String email,
                                                       @RequestBody QuizRequestDto quizRequestDto){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", quizService.submitQuiz(email , quizRequestDto)));
    }
}
