package com.ssafy.developermaker;

import com.ssafy.developermaker.domain.album.repository.AlbumRepository;
import com.ssafy.developermaker.domain.quiz.repository.QuizRepository;
import com.ssafy.developermaker.domain.study.entity.Category;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import com.ssafy.developermaker.global.util.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
@RequiredArgsConstructor
@Slf4j
public class InitClass {

    private final QuizRepository quizRepository;
    private final UserRepository userRepository;
    private final AlbumRepository albumRepository;
    private final RedisUtil redisUtil;

    @PostConstruct
    public void countQuiz() {
        redisUtil.setData("csCount", String.valueOf(quizRepository.countByCategory(Category.CS)));
        redisUtil.setData("algoCount", String.valueOf(quizRepository.countByCategory(Category.ALGORITHM)));
        redisUtil.setData("backCount", String.valueOf(quizRepository.countByCategory(Category.BACKEND)));
        redisUtil.setData("frontCount", String.valueOf(quizRepository.countByCategory(Category.FRONTEND)));
        redisUtil.setData("langCount", String.valueOf(quizRepository.countByCategory(Category.LANGUAGE)));
        log.debug("quiz count set redis");
    }

    @PostConstruct
    public void countAlbum() {
        redisUtil.setData("storyCount", String.valueOf(albumRepository.countByType("story")));
        redisUtil.setData("studyCount", String.valueOf(albumRepository.countByType("study")));
        log.debug("album count set redis");
    }

    @PostConstruct
    public void countUser() {
        long userCount = userRepository.count();
        redisUtil.setData("userCount", String.valueOf(userCount));
        log.debug("user count set redis");
    }


}
