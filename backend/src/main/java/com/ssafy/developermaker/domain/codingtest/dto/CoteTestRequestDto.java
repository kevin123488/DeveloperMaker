package com.ssafy.developermaker.domain.codingtest.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CoteTestRequestDto {
    String language;
    String code;
    String input;
}
