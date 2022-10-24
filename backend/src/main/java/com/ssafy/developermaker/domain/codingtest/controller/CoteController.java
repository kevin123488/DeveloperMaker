package com.ssafy.developermaker.domain.codingtest.controller;

import com.ssafy.developermaker.domain.codingtest.application.CoteService;
import com.ssafy.developermaker.domain.codingtest.dto.CoteDto;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@Slf4j
@RequestMapping("/cote")
@RequiredArgsConstructor
public class CoteController {

    private final CoteService coteService;

    @GetMapping
    @ApiOperation(value = "코딩테스트 문제 리스트 확인", notes = "response의 correct가 null : 풀지않음, false : 틀림, true : 맞음")
    public ResponseEntity<BaseResponseBody> getList(@AuthenticationPrincipal String email) {
        List<CoteDto> coteDtos = coteService.getList(email);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", coteDtos));
    }

}
