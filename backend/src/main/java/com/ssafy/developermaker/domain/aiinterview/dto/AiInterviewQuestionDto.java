package com.ssafy.developermaker.domain.aiinterview.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Builder
@Getter
@Setter
public class AiInterviewQuestionDto {
    private Long aiqId;
    private Integer no;
    private String subject;
    private String question;
    private List<String> keyword;
}
