package com.ssafy.developermaker.domain.quiz.repository;

import com.ssafy.developermaker.domain.quiz.entity.Quiz;
import com.ssafy.developermaker.domain.study.entity.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuizRepository extends JpaRepository<Quiz, Long>, QuizRepositoryCustom {

    Page<Quiz> findByCategoryAndSubject(PageRequest pageRequest, Category category, String subject);
}
