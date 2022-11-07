package com.ssafy.developermaker.domain.album.entity;

import com.ssafy.developermaker.domain.album.dto.AlbumDto;
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

    @Column(nullable = false, length = 30)
    private String type;

    @Column(length = 30)
    private String theme;


    public AlbumDto toDto(Boolean isOwned, Double ownerRate,Boolean isRead) {
        return AlbumDto.builder()
                .albumId(albumId)
                .albumImg(albumImg)
                .albumTitle(albumTitle)
                .ownerRate(ownerRate)
                .isOwned(isOwned)
                .theme(theme)
                .isRead(isRead)
                .build();
    }
}
