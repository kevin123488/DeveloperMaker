package com.ssafy.developermaker.domain.progress.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RankingDto {

    private String nickname;
    private String profileImg;
    private Integer progress;

}
