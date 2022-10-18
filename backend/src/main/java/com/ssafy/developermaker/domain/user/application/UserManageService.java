package com.ssafy.developermaker.domain.user.application;

import com.ssafy.developermaker.domain.user.dto.UserDto;
import com.ssafy.developermaker.domain.user.entity.User;
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
        return findUser.map(User::toDto).orElse(null);
    }

    @Transactional
    public UserDto modify(UserDto userDto, String email) {
        Optional<User> user = userRepository.findByEmail(email);
        if(!user.isPresent()) return null;
        User findUser = user.get();

        findUser.updateNickname(userDto.getNickname());
        userRepository.save(findUser);
        return findUser.toDto();
    }


    @Transactional
    public boolean delete(String email) {
        Optional<User> user = userRepository.findByEmail(email);
        if(!user.isPresent()) return false;
        User findUser = user.get();

        userRepository.delete(findUser);

        return true;
    }

}