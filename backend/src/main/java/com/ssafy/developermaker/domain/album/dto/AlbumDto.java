package com.ssafy.developermaker.domain.album.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AlbumDto {
    private Long albumId;
    private String albumTitle;
    private String albumImg;
    private Boolean isOwned = false;
    private Double ownerRate = 0.0;
    private String theme;
    private Boolean isRead;
}
