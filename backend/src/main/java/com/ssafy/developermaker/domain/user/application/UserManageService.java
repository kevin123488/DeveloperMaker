package com.ssafy.developermaker.domain.user.application;

import com.ssafy.developermaker.domain.user.dto.SignupDto;
import com.ssafy.developermaker.domain.user.dto.UserDto;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class UserManageService {

    private final UserRepository userRepository;

    public UserDto getInfo(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);
        return user.toDto();
    }

    @Transactional
    public UserDto modify(UserDto userDto, String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);
        user.updateProfile(userDto);
        return user.toDto();
    }


    @Transactional
    public boolean delete(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);
        userRepository.delete(user);
        return true;
    }

    @Transactional
    public UserDto signup(String email, SignupDto signupDto) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        user.signupFirst(signupDto);
        return user.toDto();
    }

}