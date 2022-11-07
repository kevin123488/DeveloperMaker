package com.ssafy.developermaker.domain.user.application;

import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.progress.repository.ProgressRepository;
import com.ssafy.developermaker.domain.user.dto.SignupDto;
import com.ssafy.developermaker.domain.user.dto.UserDto;
import com.ssafy.developermaker.domain.user.entity.Gender;
import com.ssafy.developermaker.domain.user.entity.Language;
import com.ssafy.developermaker.domain.user.entity.LoginType;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;

@SpringBootTest
@Transactional
@DisplayName("User 테스트")
@Rollback(false)
class UserManageServiceTest {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ProgressRepository progressRepository;

    @Test
    public void 유저정보조회() {
        Progress progress = new Progress();
        progressRepository.save(progress);

        User userA = new User(1L,"test@naver.com-NAVER","socialId", "유저A", Gender.MAN, Language.JAVA, LoginType.KAKAO,null, progress);
        User savedUserA = userRepository.save(userA);
        User findUser = userRepository.findById(savedUserA.getUserId()).get();

        assertThat(findUser.getUserId()).isEqualTo(savedUserA.getUserId());
        assertThat(findUser).isEqualTo(savedUserA);
    }

    @Test
    public void 유저닉네임변경() {
        // given
        Progress progress = new Progress();
        progressRepository.save(progress);

        User userA = new User(1L,"test@naver.com-NAVER","socialId", "유저A", Gender.MAN, Language.JAVA, LoginType.KAKAO,null, progress);
        User savedUser = userRepository.save(userA);

        // when
        String nickname = "닉네임수정";
        Language language = Language.C;
        UserDto userDto = new UserDto();
        userDto.setNickname(nickname);
        userDto.setLanguage(language);
        savedUser.updateProfile(userDto);

        // then
        assertThat(savedUser.getNickname()).isEqualTo(nickname);
    }

    @Test
    public void 유저삭제() {
        // given
        Progress progress = new Progress();
        progressRepository.save(progress);

        User userA = new User(1L,"test@naver.com-NAVER","socialId", "유저A", Gender.MAN, Language.JAVA, LoginType.KAKAO,null, progress);
        User savedUser = userRepository.save(userA);

        // when
        userRepository.delete(savedUser);

        // then
        assertFalse(userRepository.findById(1L).isPresent());
    }

    @Test
    public void 최초유저_언어_닉네임설정() {
        // given
        Progress progress = new Progress();
        progressRepository.save(progress);

        User userA = new User(1L,"test@naver.com-NAVER","socialId", "유저A", Gender.MAN, Language.JAVA, LoginType.KAKAO,null, progress);
        User savedUser = userRepository.save(userA);

        // when
        SignupDto signupDto = new SignupDto("닉네임수정",Language.JAVA);
        savedUser.signupFirst(signupDto);

        // then
        assertThat(savedUser.getNickname()).isEqualTo("닉네임수정");
        assertThat(savedUser.getLanguage()).isEqualTo(Language.JAVA);
    }

}