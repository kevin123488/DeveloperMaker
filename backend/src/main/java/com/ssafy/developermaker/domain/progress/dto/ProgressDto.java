package com.ssafy.developermaker.domain.progress.dto;


import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProgressDto {

    private Integer cs;
    private Integer algo;
    private Integer front;
    private Integer back;
    private Integer language;
}
