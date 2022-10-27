package com.ssafy.developermaker.domain.memory.application;

import com.ssafy.developermaker.domain.memory.dto.MemoryDto;
import com.ssafy.developermaker.domain.memory.dto.ResponseMemoryDto;
import com.ssafy.developermaker.domain.memory.entity.Memory;
import com.ssafy.developermaker.domain.memory.repository.MemoryRepository;
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
public class MemoryService {

    private final UserRepository userRepository;
    private final MemoryRepository memoryRepository;

    public List<ResponseMemoryDto> getMemory(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        return getMemoryDtos(user);
    }

    @Transactional
    public List<ResponseMemoryDto> saveMemory(String email, MemoryDto memoryDto) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        Optional<Memory> findMemory = memoryRepository.findByUserAndSlot(user, memoryDto.getSlot());

        if(findMemory.isPresent()) findMemory.get().updateMemory(memoryDto);
        else memoryRepository.save(memoryDto.toEntity(user));

        return getMemoryDtos(user);
    }

    private List<ResponseMemoryDto> getMemoryDtos(User user) {
        List<ResponseMemoryDto> list = new ArrayList<>();
        for(int i = 1; i <= 3; i++) {
            Optional<Memory> findMemory = memoryRepository.findByUserAndSlot(user, i);
            ResponseMemoryDto response;
            if(findMemory.isPresent()) response = findMemory.get().toResponseDto();
            else response = new ResponseMemoryDto("script1",1,i,0,0,0,0,0);
            list.add(response);
        }

        return list;
    }

}
