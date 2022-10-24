package com.ssafy.developermaker.domain.quiz.repository;

import com.ssafy.developermaker.domain.quiz.entity.Quiz;
import com.ssafy.developermaker.domain.quiz.entity.UserQuiz;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserQuizRepository extends JpaRepository<UserQuiz, Long> {
    Optional<UserQuiz> findByUserAndQuiz(User user, Quiz quiz);
}
