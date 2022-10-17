package com.ssafy.developermaker.domain.album.entity;

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

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long albumId;

    @Column(nullable = false, length = 100)
    private String albumTitle;

    @Column(nullable = false, length = 300)
    private String albumImg;

}
