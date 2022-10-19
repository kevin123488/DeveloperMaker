package com.ssafy.developermaker.domain.processivity.application;

import com.ssafy.developermaker.domain.processivity.repository.ProcessivityRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class ProcessivityService {

    private final ProcessivityRepository processivityRepository;


}
