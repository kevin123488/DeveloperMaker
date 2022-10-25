package com.ssafy.developermaker.domain.aiinterview.controller;

import com.ssafy.developermaker.domain.aiinterview.application.EmotionService;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import com.ssafy.developermaker.global.util.AwsS3Service;
import io.swagger.annotations.ApiParam;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/ai")
@RequiredArgsConstructor
public class AiInterviewController {
    private final EmotionService emotionService;
    private final AwsS3Service awsS3Service;
    @PostMapping
    public ResponseEntity<BaseResponseBody> getResult(@RequestPart (value = "file") @ApiParam(value="이미지 파일") MultipartFile file){
        String imgUrl = awsS3Service.uploadImage(file);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", emotionService.getResult(imgUrl)));
    }
}
