package com.ssafy.developermaker.domain.album.repository;

import com.ssafy.developermaker.domain.album.entity.Album;
import com.ssafy.developermaker.domain.album.entity.UserAlbum;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserAlbumRepository extends JpaRepository<UserAlbum, Long> {
    Optional<UserAlbum> findByUserAndAlbum(User user, Album album);
    Long countByAlbum(Album album);

    Optional<UserAlbum> findByUserAndAlbum_AlbumId(User user,Long albumId);

    Optional<UserAlbum> findByUserAndIsReadIsFalse(User user);

    Integer countByUserAndAlbum_Type(User user, String type);
}
