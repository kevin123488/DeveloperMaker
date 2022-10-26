package com.ssafy.developermaker.domain.aiinterview.controller;

import com.ssafy.developermaker.domain.aiinterview.application.AiInterviewService;
import com.ssafy.developermaker.domain.aiinterview.dto.AiInterviewRequestDto;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import com.ssafy.developermaker.global.util.AwsS3Service;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
@RequestMapping("/ai")
@RequiredArgsConstructor
public class AiInterviewController {
    private final AiInterviewService aiInterviewService;
    private final AwsS3Service awsS3Service;

    @PostMapping
    @ApiOperation(value = "AI면접", notes = "jpg와 txt를 보내면 결과를 반환.")
    public ResponseEntity<BaseResponseBody> analyzeImg(@RequestPart(value = "file") @ApiParam(value = "이미지 파일") MultipartFile file, @RequestBody AiInterviewRequestDto aiInterviewRequestDto) {
        String imgUrl = awsS3Service.uploadImage(file);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", aiInterviewService.getResult(imgUrl, aiInterviewRequestDto.getInterviewText())));
    }


}
