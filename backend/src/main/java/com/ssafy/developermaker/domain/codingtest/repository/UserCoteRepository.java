package com.ssafy.developermaker.domain.codingtest.repository;

import com.ssafy.developermaker.domain.codingtest.entity.Cote;
import com.ssafy.developermaker.domain.codingtest.entity.UserCote;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserCoteRepository extends JpaRepository<UserCote, Long> {
    Optional<UserCote> findByUserAndCote(User user, Cote cote);

}
