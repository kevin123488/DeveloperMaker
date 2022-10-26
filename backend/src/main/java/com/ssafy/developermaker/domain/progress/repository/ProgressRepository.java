package com.ssafy.developermaker.domain.progress.repository;

import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ProgressRepository extends JpaRepository<Progress,Long> {
    Optional<Progress> findByUser(User user);
}
