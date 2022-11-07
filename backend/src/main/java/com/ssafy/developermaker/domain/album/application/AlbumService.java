package com.ssafy.developermaker.domain.album.application;

import com.ssafy.developermaker.domain.album.dto.AlbumDto;
import com.ssafy.developermaker.domain.album.dto.AlbumResponseDto;
import com.ssafy.developermaker.domain.album.entity.Album;
import com.ssafy.developermaker.domain.album.entity.UserAlbum;
import com.ssafy.developermaker.domain.album.exception.AlbumNotFoundException;
import com.ssafy.developermaker.domain.album.repository.AlbumRepository;
import com.ssafy.developermaker.domain.album.repository.UserAlbumRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class AlbumService {
    private final AlbumRepository albumRepository;
    private final UserRepository userRepository;
    private final UserAlbumRepository userAlbumRepository;

    public AlbumResponseDto getAlbumList(String email) {
        List<Album> albumList = albumRepository.findAll();
        long userCount = userRepository.count();
        if(userCount == 0) userCount++;

        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        List<AlbumDto> storyAlbumList = new ArrayList<>();
        List<AlbumDto> studyAlbumList = new ArrayList<>();
        for(Album album : albumList) {
            boolean isGet = userAlbumRepository.findByUserAndAlbum(user,album).isPresent();

            double ownerRate = 0.0;
            if(isGet){ ownerRate =  userAlbumRepository.countByAlbum(album).doubleValue() / userCount;}

            AlbumDto albumDto = album.toDto(isGet,ownerRate);
            if(album.getType().equals("story")) storyAlbumList.add(albumDto);
            else studyAlbumList.add(albumDto);
        }

        return new AlbumResponseDto(storyAlbumList,studyAlbumList);
    }
    @Transactional
    public AlbumDto resistUserAlbum(String email, Long albumId){
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        Optional<Album> findAlbum = albumRepository.findById(albumId);
        Album album = findAlbum.orElseThrow(AlbumNotFoundException::new);

        if(!userAlbumRepository.findByUserAndAlbum(user,album).isPresent()) {
            UserAlbum userAlbum = UserAlbum.builder().album(album).user(user).build();
            userAlbumRepository.save(userAlbum);
        }

        long userCount = userRepository.count();
        return album.toDto(true, userAlbumRepository.countByAlbum(album).doubleValue() / userCount);
    }

    public Boolean findAlbum(String email, Long albumId) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        Optional<UserAlbum> findUserAlbum = userAlbumRepository.findByUserAndAlbum_AlbumId(user, albumId);
        return findUserAlbum.isPresent();
    }

}
