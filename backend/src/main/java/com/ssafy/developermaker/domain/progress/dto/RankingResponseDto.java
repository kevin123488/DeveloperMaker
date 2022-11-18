package com.ssafy.developermaker.domain.progress.dto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RankingResponseDto {

    private List<RankingDto> csRank;
    private List<RankingDto> algoRank;
    private List<RankingDto> backRank;
    private List<RankingDto> frontRank;
    private List<RankingDto> langRank;
}
