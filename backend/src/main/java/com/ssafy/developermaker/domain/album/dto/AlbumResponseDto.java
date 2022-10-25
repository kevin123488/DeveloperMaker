package com.ssafy.developermaker.domain.album.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Builder
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class AlbumResponseDto {
    private Long albumId;
    private String albumTitle;
    private String albumImg;
    private Boolean isOwned = false;
    private Double ownerRate = 0.0;
}
