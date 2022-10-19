package com.ssafy.developermaker.domain.processivity.controller;

import com.ssafy.developermaker.domain.processivity.application.ProcessivityService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@Slf4j
@RequestMapping("/user")
@RequiredArgsConstructor
public class ProcessivityController {

    private final ProcessivityService processivityService;


}
