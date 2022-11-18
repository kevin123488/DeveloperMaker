package com.ssafy.developermaker.domain.aiinterview.repository;

import com.ssafy.developermaker.domain.aiinterview.entity.AiInterviewQuestion;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface AiInterviewQuestionRepository extends JpaRepository <AiInterviewQuestion, Long>{
    @Query(value = "SELECT * FROM ai_interview_question WHERE SUBJECT = :subject ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Optional<AiInterviewQuestion> findBySubjectOrderByRand(@Param(value = "subject") String subject);
    Optional<AiInterviewQuestion> findAiInterviewQuestionByAiqId(Long aiqId);
}
