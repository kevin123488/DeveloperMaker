package com.ssafy.developermaker.domain.memory.application;

import com.ssafy.developermaker.domain.memory.entity.Memory;
import com.ssafy.developermaker.domain.memory.repository.MemoryRepository;
import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.progress.repository.ProgressRepository;
import com.ssafy.developermaker.domain.user.entity.Language;
import com.ssafy.developermaker.domain.user.entity.LoginType;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@Transactional
@DisplayName("Memory 테스트")
@Rollback(false)
class MemoryServiceTest {

    @Autowired
    private MemoryRepository memoryRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ProgressRepository progressRepository;

    @PersistenceContext
    private EntityManager entityManager;

    @Test
    @DisplayName("게임슬롯 저장 테스트")
    public void Memory저장테스트() {
        Progress progress = new Progress();
        progressRepository.save(progress);

        User userA = new User(1L,"test@naver.com-NAVER","socialId", "유저A", Language.JAVA, LoginType.KAKAO,null,progress,null, null,null);
        userRepository.save(userA);

        entityManager.flush();
        entityManager.clear();

        Memory memory = new Memory(1L,1,"스크립트명",2,3,10,20,30,40, userA);
        memoryRepository.save(memory);

        Optional<Memory> findMemories = memoryRepository.findByUserAndSlot(userA, 1);
        Optional<User> findUser = userRepository.findById(1L);

        System.out.println("user : " + findUser.get());
        System.out.println("memory : " + findMemories.get());
        System.out.println("user memory : " + findUser.get().getMemories());

        assertThat(findUser.get().getMemories()).contains(findMemories.get());
        assertThat(findUser.get().getMemories().get(0)).isEqualTo(findMemories.get());
    }

    @Test
    @DisplayName("게임 저장데이터 조회")
    public void 저장데이터조회() {
        Progress progress = new Progress();
        progressRepository.save(progress);

        User userA = new User(1L,"test@naver.com-NAVER","socialId", "유저A", Language.JAVA, LoginType.KAKAO,null,progress,null, null,null);
        userRepository.save(userA);

        entityManager.flush();
        entityManager.clear();

        Memory memory = new Memory(1L,1,"스크립트명",1,3,10,20,30,40, userA);
        Memory memory2 = new Memory(2L,2,"스크립트명2",2,1,20,20,20,20, userA);
        memoryRepository.save(memory);
        memoryRepository.save(memory2);

        Optional<User> findUser = userRepository.findById(1L);
        Optional<Memory> findMemory1 = memoryRepository.findByUserAndSlot(userA, 1);
        Optional<Memory> findMemory2 = memoryRepository.findByUserAndSlot(userA, 2);
        List<Memory> findMemories = memoryRepository.findByUser(userA);

        assertThat(findMemory1.get().getChapter()).isEqualTo(1);
        assertThat(findMemory2.get().getScript()).isEqualTo("스크립트명2");
        assertThat(findMemory1.get().getUser()).isEqualTo(findUser.get());
        assertThat(findMemories).hasSize(2);
    }



}