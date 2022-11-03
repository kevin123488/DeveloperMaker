package com.ssafy.developermaker.domain.aiinterview.entity;

import com.ssafy.developermaker.domain.aiinterview.dto.AiInterviewQuestionDto;
import org.springframework.beans.factory.annotation.Value;

import javax.persistence.*;

@Entity
public class AiInterviewQuestion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long aiqId;

    @Column(nullable = false)
    private Integer no;

    @Column(nullable = false)
    private String subject;

    @Column(nullable = false)
    private String question;

    @Column(nullable = false)
    private String keyword;

    public AiInterviewQuestionDto toDto(){
        return AiInterviewQuestionDto.builder().no(no).question(question).aiqId(aiqId).keyword(keyword).subject(subject).build();
    }
}
