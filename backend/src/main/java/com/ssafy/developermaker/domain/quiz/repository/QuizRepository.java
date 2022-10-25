package com.ssafy.developermaker.domain.quiz.repository;

import com.ssafy.developermaker.domain.quiz.entity.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface QuizRepository extends JpaRepository<Quiz, Long> {
    List<Quiz> findBySubject(String subject);
    Optional<Quiz> findByQuizId(Long quizId);
}
