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
import java.util.Comparator;
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

        Optional<Memory> findMemory = Optional.ofNullable(user.getMemories().get(memoryDto.getSlot()));

        if(findMemory.isPresent()) findMemory.get().updateMemory(memoryDto);
        else memoryRepository.save(memoryDto.toEntity(user));

        return getMemoryDtos(user);
    }

    private List<ResponseMemoryDto> getMemoryDtos(User user) {
        List<ResponseMemoryDto> list = new ArrayList<>();

        List<Memory> memories = user.getMemories();
        memories.sort(new Comparator<Memory>() {
            @Override
            public int compare(Memory o1, Memory o2) {
                return o1.getSlot() - o2.getSlot();
            }
        });

        for(int i = 1; i <= 3; i++) {
            ResponseMemoryDto response;

            if(memories.size() > 0 && memories.get(0).getSlot() == i) {
                response = memories.get(0).toResponseDto();
                memories.remove(0);
            } else {
                response = new ResponseMemoryDto("script1",1,i,0,0,0,0,0);
            }

            list.add(response);
        }

        return list;
    }

}
