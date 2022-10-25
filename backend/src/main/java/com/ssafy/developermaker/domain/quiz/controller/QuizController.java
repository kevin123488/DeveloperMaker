package com.ssafy.developermaker.domain.quiz.controller;

import com.ssafy.developermaker.domain.quiz.application.QuizService;
import com.ssafy.developermaker.global.model.BaseResponseBody;
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

    @GetMapping("/{subject}")
    public ResponseEntity<BaseResponseBody> getList(@AuthenticationPrincipal String email, @PathVariable String subject){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", quizService.getQuizList(email, subject)));
    }
    @PostMapping("/{quizId}")
    public ResponseEntity<BaseResponseBody> submitQuiz(@AuthenticationPrincipal String email, @RequestBody String answer, @PathVariable Long quizId){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", quizService.submitQuiz(email ,quizId, answer)));
    }
}
