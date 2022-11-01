package com.ssafy.developermaker.domain.study.repository;

import com.querydsl.core.Tuple;
import com.querydsl.jpa.impl.JPAQueryFactory;
import com.ssafy.developermaker.domain.study.dto.QStudySubjectDto;
import com.ssafy.developermaker.domain.study.dto.StudyCategoryResponseDto;
import com.ssafy.developermaker.domain.study.dto.StudySubjectDto;
import com.ssafy.developermaker.domain.study.entity.Category;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

import static com.ssafy.developermaker.domain.study.entity.QStudy.*;

public class StudyRepositoryImpl implements StudyRepositoryCustom {

    private final JPAQueryFactory queryFactory;

    public StudyRepositoryImpl(EntityManager em) {
        this.queryFactory = new JPAQueryFactory(em);
    }

    public List<StudyCategoryResponseDto> getStudyList() {
        List<Category> categories = queryFactory
                .select(study.category)
                .from(study)
                .groupBy(study.category)
                .fetch();

        List<StudyCategoryResponseDto> response_list = new ArrayList<>();

        for (int i = 0; i < categories.size(); i++) {
            StudyCategoryResponseDto studyCategoryResponseDto = new StudyCategoryResponseDto();
            Category category = categories.get(i);
            studyCategoryResponseDto.setCategory(category);

            List<StudySubjectDto> fetch = queryFactory
                    .select(new QStudySubjectDto(study.subject, study.count()))
                    .from(study)
                    .groupBy(study.subject)
                    .where(study.category.eq(category))
                    .fetch();

            List<StudySubjectDto> list = new ArrayList<>(fetch);
            studyCategoryResponseDto.setSubjectList(list);

            response_list.add(studyCategoryResponseDto);
        }

        return response_list;
    }


}
