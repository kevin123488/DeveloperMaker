package com.ssafy.developermaker.domain.codingtest.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CoteInfoDto {
    private Long coteId;
    private String title;
    private String problem;
    private Integer correct;
}
