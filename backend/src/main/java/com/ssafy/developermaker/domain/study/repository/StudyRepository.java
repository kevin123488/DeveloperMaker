package com.ssafy.developermaker.domain.study.repository;

import com.ssafy.developermaker.domain.study.entity.Study;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface StudyRepository extends JpaRepository<Study, Long> {
    Long countBySubject(String subject);
    //Optional<Study> findAllOrderBy
}
