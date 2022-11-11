package com.ssafy.developermaker.domain.album.repository;

import com.ssafy.developermaker.domain.album.entity.Album;
import com.ssafy.developermaker.domain.album.entity.UserAlbum;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserAlbumRepository extends JpaRepository<UserAlbum, Long> {

    Optional<UserAlbum> findByUserAndAlbum(User user, Album album);
    Optional<UserAlbum> findByUser_EmailAndAlbum_AlbumId(String email,Long albumId);
    Long countByAlbum(Album album);

    boolean existsByUser_EmailAndIsReadIsFalse(String email);

    Integer countByUser_EmailAndAlbum_Type(String email, String type);
}
