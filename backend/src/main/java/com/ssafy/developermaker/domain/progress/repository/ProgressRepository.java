package com.ssafy.developermaker.domain.progress.repository;

import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface ProgressRepository extends JpaRepository<Progress,Long> {

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByCsDescModifiedDateAsc();

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByAlgorithmDescModifiedDateAsc();

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByBackendDescModifiedDateAsc();

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByFrontendDescModifiedDateAsc();

    @EntityGraph(attributePaths = {"user"})
    List<Progress> findTop10ByOrderByLanguageDescModifiedDateAsc();
}
