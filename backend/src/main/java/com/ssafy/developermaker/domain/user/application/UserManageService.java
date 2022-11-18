package com.ssafy.developermaker.domain.user.application;

import com.ssafy.developermaker.domain.user.dto.SignupDto;
import com.ssafy.developermaker.domain.user.dto.UserDto;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import com.ssafy.developermaker.global.util.AwsS3Service;
import com.ssafy.developermaker.global.util.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class UserManageService {

    private final UserRepository userRepository;
    private final RedisUtil redisUtil;
    private final String defaultImg = "https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/user/%ED%94%84%EB%A1%9C%ED%95%84.png";
    private final AwsS3Service awsS3Service;

    public UserDto getInfo(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);
        return user.toDto();
    }

    @Transactional
    public UserDto modify(UserDto userDto, String email, MultipartFile file) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        if(file == null) user.updateProfile(userDto,user.getProfileImg());
        else {
            if(!user.getProfileImg().equals(defaultImg)) awsS3Service.delete(user.getProfileImg());
            user.updateProfile(userDto, awsS3Service.uploadImage(file));
        }

        return user.toDto();
    }


    @Transactional
    public boolean delete(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);
        userRepository.delete(user);

        int userCount = Integer.parseInt(redisUtil.getData("userCount")) - 1;
        redisUtil.setData("userCount", String.valueOf(userCount));
        return true;
    }

    @Transactional
    public UserDto loginFirst(String email, SignupDto signupDto) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        user.loginFirst(signupDto);
        return user.toDto();
    }

}