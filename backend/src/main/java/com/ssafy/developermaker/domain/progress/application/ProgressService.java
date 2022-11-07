package com.ssafy.developermaker.domain.progress.application;

import com.ssafy.developermaker.domain.progress.dto.ProgressDto;
import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.progress.exception.ProgressNotFoundException;
import com.ssafy.developermaker.domain.progress.repository.ProgressRepository;
import com.ssafy.developermaker.domain.quiz.repository.QuizRepository;
import com.ssafy.developermaker.domain.study.entity.Category;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class ProgressService {

    private final UserRepository userRepository;
    private final ProgressRepository progressRepository;
    private final QuizRepository quizRepository;

    public ProgressDto getProgress(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        Optional<Progress> findProgress = progressRepository.findByUser(user);
        Progress progress = findProgress.orElseThrow(ProgressNotFoundException::new);

        int csCount = quizRepository.countByCategory(Category.CS);
        int algoCount = quizRepository.countByCategory(Category.ALGORITHM);
        int backCount = quizRepository.countByCategory(Category.BACKEND);
        int frontCount = quizRepository.countByCategory(Category.FRONTEND);
        int langCount = quizRepository.countByCategory(Category.LANGUAGE);

        return new ProgressDto(progress, csCount, algoCount, backCount, frontCount, langCount);
    }

}
