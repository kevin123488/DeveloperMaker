package com.ssafy.developermaker.domain.memory.application;

import com.ssafy.developermaker.domain.memory.dto.MemoryDto;
import com.ssafy.developermaker.domain.memory.entity.Memory;
import com.ssafy.developermaker.domain.memory.exception.MemoryNotFoundException;
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
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class MemoryService {

    private final UserRepository userRepository;
    private final MemoryRepository memoryRepository;

    public List<MemoryDto> getMemory(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        return getMemoryDtos(user);
    }

    @Transactional
    public List<MemoryDto> saveMemory(String email, MemoryDto memoryDto) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        Optional<Memory> findMemory = memoryRepository.findByUserAndSlot(user, memoryDto.getSlot());

        if(findMemory.isPresent()) {
            findMemory.get().updateMemory(memoryDto);
            memoryRepository.save(findMemory.get());
        } else {
            memoryDto.setUserDto(user.toDto());
            memoryRepository.save(memoryDto.toEntity(user));
        }

        return getMemoryDtos(user);
    }

    private List<MemoryDto> getMemoryDtos(User user) {
        List<Memory> findMemories = memoryRepository.findByUser(user);
        return findMemories.stream().map(Memory::toDto).collect(Collectors.toList());
    }

}
