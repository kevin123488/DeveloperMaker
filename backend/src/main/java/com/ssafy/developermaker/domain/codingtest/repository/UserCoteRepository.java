package com.ssafy.developermaker.domain.codingtest.repository;

import com.ssafy.developermaker.domain.codingtest.entity.Cote;
import com.ssafy.developermaker.domain.codingtest.entity.UserCote;
import com.ssafy.developermaker.domain.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserCoteRepository extends JpaRepository<UserCote, Long> {
    List<UserCote> findUserCoteByUser(User user);
    boolean existsByUserAndCodingTest(User user, Cote cote);

}
