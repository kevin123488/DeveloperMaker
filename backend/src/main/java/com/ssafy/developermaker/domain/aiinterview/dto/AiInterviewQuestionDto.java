package com.ssafy.developermaker.domain.aiinterview.dto;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class AiInterviewQuestionDto {
    private Long aiqId;
    private String type;
    private String question;
    private String keyword;
}
