package com.ssafy.developermaker.domain.quiz.application;

import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.quiz.dto.*;
import com.ssafy.developermaker.domain.quiz.entity.Quiz;
import com.ssafy.developermaker.domain.quiz.entity.UserQuiz;
import com.ssafy.developermaker.domain.quiz.exception.QuizNotFoundException;
import com.ssafy.developermaker.domain.quiz.repository.QuizRepository;
import com.ssafy.developermaker.domain.quiz.repository.UserQuizRepository;
import com.ssafy.developermaker.domain.study.entity.Category;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class QuizService {
    private final QuizRepository quizRepository;
    private final UserQuizRepository userQuizRepository;
    private final UserRepository userRepository;
    public List<QuizCategoryResponseDto> getQuizList() {


        return quizRepository.getQuizList();
    }

    public QuizDto getQuizPage(String email, QuizListRequestDto quizListRequestDto) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        PageRequest pageRequest = PageRequest.of(quizListRequestDto.getOffset(), quizListRequestDto.getLimit());
        Page<Quiz> page = quizRepository.findByCategoryAndSubject(pageRequest, quizListRequestDto.getCategory(), quizListRequestDto.getSubject());

        QuizDto quizDto = new QuizDto(quizListRequestDto.getCategory(), quizListRequestDto.getSubject(), page.getTotalElements() ,page.getTotalPages());
        List<QuizInfoDto> quizInfoDtoList = page.stream().map(quiz ->
                new QuizInfoDto(quiz.getQuizId(), quiz.getTitle(), quiz.getProblem(),
                        quiz.getExample().split("/"),
                        userQuizRepository.findByUserAndQuiz(user,quiz).isPresent()
                                ?  userQuizRepository.findByUserAndQuiz(user,quiz).get().getCorrect() : 0))
                .collect(Collectors.toList());

        quizDto.setQuizInfo(quizInfoDtoList);
        return quizDto;
    }

    @Transactional
    public QuizSubmitDto submitQuiz(String email, QuizRequestDto quizRequestDto) {
        User findUser = userRepository.findByEmail(email).orElseThrow(UserNotFoundException::new);
        Quiz findQuiz = quizRepository.findById(quizRequestDto.getQuizId()).orElseThrow(QuizNotFoundException::new);

        Optional<UserQuiz> findUserQuiz = userQuizRepository.findByUserAndQuiz(findUser, findQuiz);

        Progress progress = findUser.getProgress();

        boolean result = findQuiz.getAnswer().equals(quizRequestDto.getAnswer());
        if(!findUserQuiz.isPresent()) {

            if (result) updateProgress(findQuiz.getCategory(), progress);

            UserQuiz userQuiz = UserQuiz.builder()
                    .correct(result ? 1 : 2)
                    .user(findUser)
                    .quiz(findQuiz)
                    .build();
            userQuizRepository.save(userQuiz);
        } else if(findUserQuiz.get().getCorrect() == 2 && result) {
            updateProgress(findQuiz.getCategory(), progress);
            findUserQuiz.get().updateCorrect(1);
        }

        String answer;
        Category category = findQuiz.getCategory();
        if(category.equals(Category.CS)) answer = result ? "오.. 제법인데?" : "이런걸 틀리다니.. 최악이네, 너.";
        else if (category.equals(Category.BACKEND)) answer = result ? "... 의외네요." : "... 실망스럽네요.";
        else if (category.equals(Category.FRONTEND)) answer = result ? "오~ 정답! 대단한걸?!" : "까비~ 다시 풀어보자!";
        else answer = result ? "쉽네 ㅋㅋ" : "아 틀렸네ㅋㅋ";

        return new QuizSubmitDto(answer,result);
    }


    public void updateProgress(Category category, Progress progress) {
        switch (category.name()) {
            case "CS":
                progress.updateCS();
                break;
            case "BACKEND":
                progress.updateBackend();
                break;
            case "FRONTEND":
                progress.updateFrontend();
                break;
            default:
                progress.updateLanguage();
                break;
        }
    }
}
