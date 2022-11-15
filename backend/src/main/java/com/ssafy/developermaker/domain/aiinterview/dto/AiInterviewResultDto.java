package com.ssafy.developermaker.domain.aiinterview.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Builder
public class AiInterviewResultDto {
    Float totalScore; // 100점 만점
    Boolean pass; // 면접 질문 패스 여부
    Float answerScore; // 100점을 만점으로
    Float imageScore; // 100.0을 만점으로
    Integer demandKeywordCnt; // 요구되는 키워드의 수
    List<String> answerKeyword; // 답변한 키워드
    ImageAnalyzeResult imageAnalyzeResult;
}
