package com.ssafy.developermaker.domain.album.dto;

import lombok.Builder;

@Builder
public class AlbumResponseDto {
    private Long albumId;
    private String albumTitle;
    private String albumImg;
    private Boolean isOwned;
    private Double ownerRate;
}
