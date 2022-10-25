package com.ssafy.developermaker.domain.memory.repository;

import com.ssafy.developermaker.domain.memory.entity.Memory;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface MemoryRepository extends JpaRepository<Memory, Long> {

    List<Memory> findByUser(User user);
    Optional<Memory> findByUserAndSlot(User user, Integer slot);
}
