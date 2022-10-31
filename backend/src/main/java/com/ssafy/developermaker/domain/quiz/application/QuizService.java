package com.ssafy.developermaker.domain.quiz.application;

import com.ssafy.developermaker.domain.quiz.dto.QuizRequestDto;
import com.ssafy.developermaker.domain.quiz.dto.QuizResponseDto;
import com.ssafy.developermaker.domain.quiz.entity.Quiz;
import com.ssafy.developermaker.domain.quiz.entity.UserQuiz;
import com.ssafy.developermaker.domain.quiz.repository.QuizRepository;
import com.ssafy.developermaker.domain.quiz.repository.UserQuizRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
@RequiredArgsConstructor
public class QuizService {
    private final QuizRepository quizRepository;
    private final UserQuizRepository userQuizRepository;
    private final UserRepository userRepository;
    
    public List<QuizResponseDto> getQuizList(String email, String subject) {
        List<Quiz> quizList = quizRepository.findBySubject(subject);
        List<QuizResponseDto> quizResponseDtoList = new ArrayList<>();
        Collections.sort(quizList, (o1, o2) -> (int) (o1.getNo() - o2.getNo()));
        User user = userRepository.findByEmail(email).get();
        for (Quiz quiz : quizList) {
            QuizResponseDto qrd = quiz.toDto();
            if (userQuizRepository.findByUserAndQuiz(user, quiz).isPresent()) {
                qrd.setCorrect(userQuizRepository.findByUserAndQuiz(user, quiz).get().getCorrect());
                quizResponseDtoList.add(qrd);
            } else {
                qrd.setCorrect(0);
                quizResponseDtoList.add(qrd);
            }
        }
        return quizResponseDtoList;
    }

    public String submitQuiz(String email, Long quizId, QuizRequestDto quizRequestDto) {
        String response = "";
        Quiz quiz = quizRepository.findByQuizId(quizId).get();
        User user = userRepository.findByEmail(email).get();
        UserQuiz userQuiz;
        if (userQuizRepository.findByUserAndQuiz(user, quiz).isPresent()) { // 푼 적이 있을 때.
            userQuiz = userQuizRepository.findByUserAndQuiz(user, quiz).get();
            if (quiz.getAnswer().equals(quizRequestDto.getAnswer())) { // 맞췄을 때.
                if (userQuiz.getCorrect() == -1) {
                    userQuiz.setCorrect(2);
                    response = "정답입니다!";
                }
            } else {
                response = "틀렸습니다!";
            }
        } else { // 푼 적 없을 때.
            userQuiz = UserQuiz.builder().user(user).quiz(quiz).build();
            if (quiz.getAnswer().equals(quizRequestDto.getAnswer())) {
                userQuiz.setCorrect(1);
                response = "정답입니다!";
            } else {
                userQuiz.setCorrect(-1);
                response = "틀렸습니다!";
            }
        }
        userQuizRepository.save(userQuiz);
        return response;
    }
}
