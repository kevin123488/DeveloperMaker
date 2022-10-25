package com.ssafy.developermaker.domain.album.entity;

import com.ssafy.developermaker.domain.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

import static javax.persistence.FetchType.LAZY;

@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserAlbum {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userAlbumId;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "userId")
    private User user;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "albumId")
    private Album album;

}
