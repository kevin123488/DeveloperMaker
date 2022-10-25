package com.ssafy.developermaker.domain.album.application;

import com.ssafy.developermaker.domain.album.dto.AlbumResponseDto;
import com.ssafy.developermaker.domain.album.entity.Album;
import com.ssafy.developermaker.domain.album.repository.AlbumRepository;
import com.ssafy.developermaker.domain.album.repository.UserAlbumRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class AlbumService {
    private final AlbumRepository albumRepository;
    private final UserRepository userRepository;
    private final UserAlbumRepository userAlbumRepository;

    public List<AlbumResponseDto> getAlbumList(String email) {
        List<Album> albumList = albumRepository.findAll();
        Long userCount = userRepository.count();
        if(userCount == 0) userCount++;
        List<AlbumResponseDto> albumResponseDtoList = new ArrayList<>();
        User user = userRepository.findByEmail(email).get();
        for (Album album : albumList) {
            Boolean b = userAlbumRepository.findAllByUserAndAlbum(user, album).isPresent() ? true : false;
            Double ownerRate =  userAlbumRepository.countByAlbum(album).doubleValue() / userCount;
            albumResponseDtoList.add(album.toDto(b, ownerRate));
        }
        return albumResponseDtoList;
    }

}
