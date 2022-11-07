package com.ssafy.developermaker.domain.memory.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ResponseMemoryDto {

    private String script;
    private Integer chapter;
    private Integer slot;
    private Integer num;
    private Integer likeSpring;
    private Integer likeSummer;
    private Integer likeAutumn;
    private Integer likeWinter;

}
