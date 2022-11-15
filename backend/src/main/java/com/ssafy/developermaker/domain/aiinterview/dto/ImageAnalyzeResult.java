package com.ssafy.developermaker.domain.aiinterview.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Builder
@ToString
public class ImageAnalyzeResult {
    Float happiness = 0f;
    Float neutral = 0f;
    Float surprise = 0f;
    Float sadness = 0f;
    Float anger = 0f;
    Float contempt = 0f;
    Float fear = 0f;
    Float disgust = 0f;
}
