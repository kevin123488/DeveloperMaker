package com.ssafy.developermaker.domain.album.repository;

import com.ssafy.developermaker.domain.album.entity.Album;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlbumRepository extends JpaRepository <Album, Long> {
}
