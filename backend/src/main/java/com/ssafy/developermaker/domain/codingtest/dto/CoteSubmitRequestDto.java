package com.ssafy.developermaker.domain.codingtest.dto;

import lombok.Getter;

@Getter
public class CoteSubmitRequestDto {
    String language;
    String code;
    public void setCode(String code){
        this.code = code;
    }
}
