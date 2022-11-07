package com.ssafy.developermaker.domain.album.dto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AlbumResponseDto {
    List<AlbumDto> storyAlbumList;
    List<AlbumDto> studyAlbumList;
}
