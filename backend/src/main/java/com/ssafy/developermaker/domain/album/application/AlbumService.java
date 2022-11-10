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
import com.ssafy.developermaker.global.util.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.swing.text.html.Option;
import java.util.*;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class AlbumService {
    private final AlbumRepository albumRepository;
    private final UserRepository userRepository;
    private final UserAlbumRepository userAlbumRepository;
    private final RedisUtil redisUtil;

    public AlbumResponseDto getAlbumList(String email) {
        List<Album> albumList = albumRepository.findAll();
        long userCount = Long.parseLong(redisUtil.getData("userCount"));

        List<AlbumDto> storyAlbumList = new ArrayList<>();
        List<AlbumDto> studyAlbumList = new ArrayList<>();
        for(Album album : albumList) {
            Optional<UserAlbum> findUserAlbum = userAlbumRepository.findByUser_EmailAndAlbum_AlbumId(email, album.getAlbumId());
            boolean isGet = findUserAlbum.isPresent();

            double ownerRate = 0.0;
            if(isGet){ ownerRate =  userAlbumRepository.countByAlbum(album).doubleValue() / userCount;}

            AlbumDto albumDto = album.toDto(isGet,ownerRate, findUserAlbum.map(UserAlbum::getIsRead).orElse(false));
            if(album.getType().equals("story")) storyAlbumList.add(albumDto);
            else studyAlbumList.add(albumDto);
        }

        return new AlbumResponseDto(storyAlbumList,studyAlbumList);
    }
    @Transactional
    public AlbumDto resistUserAlbum(String email, Long albumId){
        Optional<Album> findAlbum = albumRepository.findById(albumId);
        Album album = findAlbum.orElseThrow(AlbumNotFoundException::new);

        Optional<UserAlbum> findUserAlbum = userAlbumRepository.findByUser_EmailAndAlbum_AlbumId(email, albumId);

        if(!findUserAlbum.isPresent()) {
            Optional<User> findUser = userRepository.findByEmail(email);
            User user = findUser.orElseThrow(UserNotFoundException::new);

            UserAlbum userAlbum = UserAlbum.builder().album(album).user(user).isRead(false).build();
            userAlbumRepository.save(userAlbum);
        }

        long userCount = Long.parseLong(redisUtil.getData("userCount"));

        return albumRepository.getReferenceById(albumId).toDto(true, userAlbumRepository.countByAlbum(albumRepository.getReferenceById(albumId)).doubleValue() / userCount,false);
    }

    public Boolean findAlbum(String email, Long albumId) {
        Optional<UserAlbum> findUserAlbum = userAlbumRepository.findByUser_EmailAndAlbum_AlbumId(email, albumId);
        return findUserAlbum.isPresent();
    }


    public boolean findNewAlbum(String email) {
        Optional<List<UserAlbum>> findNewUserAlbum = userAlbumRepository.findByUser_EmailAndIsReadIsFalse(email);
        return findNewUserAlbum.isPresent();
    }

    @Transactional
    public AlbumResponseDto checkNewAlbum(String email, Long albumId) {
        Optional<UserAlbum> findUserAlbum = userAlbumRepository.findByUser_EmailAndAlbum_AlbumId(email, albumId);

        if(findUserAlbum.isPresent() && !findUserAlbum.get().getIsRead()) {
            findUserAlbum.get().checkRead();
        }

        return getAlbumList(email);
    }

    public HashMap<String, Integer> getAlbumProgress(String email) {
        int storyCount = Integer.parseInt(redisUtil.getData("storyCount"));
        int studyCount = Integer.parseInt(redisUtil.getData("studyCount"));

        int userStory = userAlbumRepository.countByUser_EmailAndAlbum_Type(email,"story");
        int userStudy = userAlbumRepository.countByUser_EmailAndAlbum_Type(email,"study");

        HashMap<String, Integer> map = new HashMap<>();
        map.put("storyAlbum", (int) ((double) userStory / storyCount * 100));
        map.put("studyAlbum", (int) ((double) userStudy / studyCount * 100));
        return map;
    }
}
