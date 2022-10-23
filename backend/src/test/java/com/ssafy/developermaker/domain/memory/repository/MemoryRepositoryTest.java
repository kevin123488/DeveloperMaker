package com.ssafy.developermaker.domain.memory.repository;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@DisplayName("저장 repository 테스트")
class MemoryRepositoryTest {

    @Autowired
    private MemoryRepository memoryRepository;

    @PersistenceContext
    private EntityManager entityManager;

    @Test
    public void MemberRepository가Null이아니다() {
        assertThat(memoryRepository).isNotNull();
    }


}