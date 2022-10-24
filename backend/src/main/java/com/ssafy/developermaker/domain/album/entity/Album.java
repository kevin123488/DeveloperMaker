package com.ssafy.developermaker.domain.album.entity;

import com.ssafy.developermaker.domain.album.dto.AlbumResponseDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Album {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long albumId;

    @Column(nullable = false, length = 100)
    private String albumTitle;

    @Column(nullable = false, length = 300)
    private String albumImg;


    public AlbumResponseDto toDto(Boolean isOwned, Double ownerRate) {
        return AlbumResponseDto.builder().albumId(albumId).albumImg(albumImg).albumTitle(albumTitle).ownerRate(ownerRate).isOwned(isOwned).build();
    }
}
