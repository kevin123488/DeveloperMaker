package com.ssafy.developermaker.domain.progress.application;

import com.ssafy.developermaker.domain.progress.dto.ProgressDto;
import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import com.ssafy.developermaker.global.util.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class ProgressService {

    private final UserRepository userRepository;
    private final RedisUtil redisUtil;

    public ProgressDto getProgress(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        Progress progress = user.getProgress();

        int csCount = Integer.parseInt(redisUtil.getData("csCount"));
        int algoCount = Integer.parseInt(redisUtil.getData("algoCount"));
        int backCount = Integer.parseInt(redisUtil.getData("backCount"));
        int frontCount = Integer.parseInt(redisUtil.getData("frontCount"));
        int langCount = Integer.parseInt(redisUtil.getData("langCount"));

        return new ProgressDto(progress, csCount, algoCount, backCount, frontCount, langCount);
    }

}
