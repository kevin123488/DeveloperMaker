package com.ssafy.developermaker.domain.quiz.controller;

import com.ssafy.developermaker.domain.quiz.application.QuizService;
import com.ssafy.developermaker.domain.quiz.dto.QuizRequestDto;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
@RequestMapping("/quiz")
@RequiredArgsConstructor
public class QuizController {
    private final QuizService quizService;

    @GetMapping("/{subject}")
    @ApiOperation(value = "퀴즈 리스트 조회", notes = "퀴즈 리스트를 반환함. 유저가 풀었는지 여부를 correct로 반환.")
    public ResponseEntity<BaseResponseBody> getList(@AuthenticationPrincipal String email, @PathVariable String subject){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", quizService.getQuizList(email, subject)));
    }
    @PostMapping("/{quizId}")
    @ApiOperation(value = "퀴즈 정답 제출", notes = "정답 여부를 String으로 반환함. Ex) '정답입니다!'")
    public ResponseEntity<BaseResponseBody> submitQuiz(@AuthenticationPrincipal String email, @RequestBody QuizRequestDto quizRequestDto, @PathVariable Long quizId){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", quizService.submitQuiz(email ,quizId, quizRequestDto)));
    }
}
