package com.ssafy.developermaker.domain.quiz.repository;

import com.querydsl.jpa.impl.JPAQueryFactory;
import com.ssafy.developermaker.domain.quiz.dto.QQuizSubjectDto;
import com.ssafy.developermaker.domain.quiz.dto.QuizCategoryResponseDto;
import com.ssafy.developermaker.domain.quiz.dto.QuizSubjectDto;
import com.ssafy.developermaker.domain.study.entity.Category;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

import static com.ssafy.developermaker.domain.quiz.entity.QQuiz.quiz;

public class QuizRepositoryImpl implements QuizRepositoryCustom {
    private final JPAQueryFactory queryFactory;

    public QuizRepositoryImpl(EntityManager em) {
        this.queryFactory = new JPAQueryFactory(em);
    }

    public List<QuizCategoryResponseDto> getQuizList() {
        List<Category> categories = queryFactory
                .select(quiz.category)
                .from(quiz)
                .groupBy(quiz.category)
                .fetch();

        List<QuizCategoryResponseDto> response_list = new ArrayList<>();

        for (int i = 0; i < categories.size(); i++) {
            QuizCategoryResponseDto quizCategoryResponseDto = new QuizCategoryResponseDto();
            Category category = categories.get(i);
            quizCategoryResponseDto.setCategory(category);

            List<QuizSubjectDto> fetch = queryFactory
                    .select(new QQuizSubjectDto(quiz.subject, quiz.count()))
                    .from(quiz)
                    .groupBy(quiz.subject)
                    .where(quiz.category.eq(category))
                    .fetch();

            List<QuizSubjectDto> list = new ArrayList<>(fetch);
            quizCategoryResponseDto.setSubjectList(list);

            response_list.add(quizCategoryResponseDto);
        }

        return response_list;
    }
}
