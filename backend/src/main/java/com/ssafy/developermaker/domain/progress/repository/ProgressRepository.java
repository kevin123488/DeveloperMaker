package com.ssafy.developermaker.domain.progress.repository;

import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface ProgressRepository extends JpaRepository<Progress,Long> {
    Optional<Progress> findByUser(User user);

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByCsDesc();

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByAlgorithmDesc();

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByBackendDesc();

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByFrontendDesc();

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByLanguageDesc();
}
