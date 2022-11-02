package com.ssafy.developermaker.domain.codingtest.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CoteListRequestDto {
    private int offset;
    private int limit;
}
