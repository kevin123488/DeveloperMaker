package com.ssafy.developermaker.domain.processivity.repository;

import com.ssafy.developermaker.domain.processivity.entity.Processivity;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ProcessivityRepository extends JpaRepository<Processivity,Long> {
    Optional<Processivity> findByUser(User user);
}
