package com.ssafy.developermaker.domain.quiz.repository;

import com.ssafy.developermaker.domain.quiz.dto.QuizCategoryResponseDto;

import java.util.List;

public interface QuizRepositoryCustom {
    List<QuizCategoryResponseDto> getQuizList();
}
