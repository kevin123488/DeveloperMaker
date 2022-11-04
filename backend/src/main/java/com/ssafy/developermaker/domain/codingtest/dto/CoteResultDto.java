package com.ssafy.developermaker.domain.codingtest.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Builder
@Setter
public class CoteResultDto {
    String output;
    Boolean pass;
}
