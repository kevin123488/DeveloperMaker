package com.ssafy.developermaker.domain.user.repository;

import com.ssafy.developermaker.domain.user.entity.Language;
import com.ssafy.developermaker.domain.user.entity.LoginType;
import com.ssafy.developermaker.domain.user.entity.User;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.jpa.repository.support.JpaEntityInformation;
import org.springframework.data.jpa.repository.support.JpaEntityInformationSupport;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;


@SpringBootTest
@DisplayName("유저 repository 테스트")
class UserRepositoryTest {

    @Autowired
    private UserRepository userRepository;

    @PersistenceContext
    private EntityManager entityManager;

    private JpaEntityInformation<User, ?> entityInformation;

    @BeforeEach
    void setUp() {
        entityInformation = JpaEntityInformationSupport.getEntityInformation(User.class, entityManager);
    }

    private static final User userA = new User(1L, "test@naver.com-NAVER", "socialId", "유저A", Language.JAVA, LoginType.KAKAO, null, null,null, null,null);

    @Test
    public void UserRepository가Null이아니다() {
        assertThat(userRepository).isNotNull();
    }

    @Test
    public void 유저저장테스트() {
        User userTest = new User(1L, "test@naver.com-NAVER", "socialId", "유저A", Language.JAVA, LoginType.KAKAO,  null, null,null, null,null);
        System.out.println("비영속 상태인가?? : " + entityInformation.isNew(userTest));
        System.out.println("아이디는 ? :" + userTest.getUserId());
        User user = userRepository.save(userTest);

        System.out.println("비영속 상태인가?? : " + entityInformation.isNew(user));
        System.out.println("아이디는 ? :" + user.getUserId());
        assertThat(user).isEqualTo(userTest);
    }


}