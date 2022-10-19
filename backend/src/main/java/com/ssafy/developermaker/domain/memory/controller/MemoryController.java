package com.ssafy.developermaker.domain.memory.controller;

import com.ssafy.developermaker.domain.memory.application.MemoryService;
import com.ssafy.developermaker.domain.memory.dto.MemoryDto;
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
@RequestMapping("/memory")
@RequiredArgsConstructor
public class MemoryController {

    private final MemoryService memoryService;

    @GetMapping
    @ApiOperation(value = "저장 스토리 확인", notes = "유저의 저장된 스토리 리스트를 가져옵니다")
    public ResponseEntity<BaseResponseBody> getMemory(@AuthenticationPrincipal String email) {
        List<MemoryDto> memory = memoryService.getMemory(email);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", memory));
    }

    @PostMapping
    @ApiOperation(value = "스토리 저장", notes = "유저가 선택한 슬롯에 스토리가 저장됩니다")
    public ResponseEntity<BaseResponseBody> saveMemory(@AuthenticationPrincipal String email,
                                                       @RequestBody MemoryDto memoryDto) {
        List<MemoryDto> memory = memoryService.saveMemory(email, memoryDto);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", memory));
    }




}
