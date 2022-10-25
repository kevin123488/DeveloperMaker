package com.ssafy.developermaker.domain.album.application;

import com.ssafy.developermaker.domain.album.dto.AlbumResponseDto;
import com.ssafy.developermaker.domain.album.entity.Album;
import com.ssafy.developermaker.domain.album.entity.UserAlbum;
import com.ssafy.developermaker.domain.album.repository.AlbumRepository;
import com.ssafy.developermaker.domain.album.repository.UserAlbumRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        //System.out.println(user.getNickname());
        for (Album album : albumList) {
            Boolean b = userAlbumRepository.findAllByUserAndAlbum(user, album).isPresent() ? true : false;

            Double ownerRate = 0.0;
            if(b){ ownerRate =  userAlbumRepository.countByAlbum(album).doubleValue() / userCount;}
            System.out.println(album.toDto(b, ownerRate).toString());
            albumResponseDtoList.add(album.toDto(b, ownerRate));
        }
        return albumResponseDtoList;
    }
    @Transactional
    public Boolean resistUserAlbum(String email, Long albumId){
        User user = userRepository.findByEmail(email).get();
        Album album = albumRepository.findById(albumId).get();
        Boolean b = userAlbumRepository.findAllByUserAndAlbum(user, album).isPresent() ? true : false;
        if(!b){
            UserAlbum userAlbum = UserAlbum.builder().album(album).user(user).build();
            userAlbumRepository.save(userAlbum);
        }
        return true;
    }

}
