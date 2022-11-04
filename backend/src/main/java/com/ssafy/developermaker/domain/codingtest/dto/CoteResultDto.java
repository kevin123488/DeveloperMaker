package com.ssafy.developermaker.domain.codingtest.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Builder
@Setter
public class CoteResultDto {
    Long spendTime;
    Boolean pass = false;
    String message;
}
