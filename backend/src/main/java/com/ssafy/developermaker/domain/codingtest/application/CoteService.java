package com.ssafy.developermaker.domain.codingtest.application;

import com.ssafy.developermaker.domain.codingtest.dto.CoteDto;
import com.ssafy.developermaker.domain.codingtest.entity.Cote;
import com.ssafy.developermaker.domain.codingtest.entity.UserCote;
import com.ssafy.developermaker.domain.codingtest.repository.CoteRepository;
import com.ssafy.developermaker.domain.codingtest.repository.UserCoteRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class CoteService {

    private final UserRepository userRepository;
    private final UserCoteRepository userCoteRepository;
    private final CoteRepository coteRepository;

    public List<CoteDto> getList(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        List<Cote> all = coteRepository.findAll();
        List<CoteDto> coteDtos = new ArrayList<>();
        for(Cote cote : all) {
            boolean correct = userCoteRepository.existsByUserAndCodingTest(user, cote);
            coteDtos.add(cote.toDto(correct));
        }
        return coteDtos;
    }
}
