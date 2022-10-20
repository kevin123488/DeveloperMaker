package com.ssafy.developermaker.domain.codingtest.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CoteDto {

    private Integer no;
    private String title;
    private String problem;
    private Boolean correct;

}
