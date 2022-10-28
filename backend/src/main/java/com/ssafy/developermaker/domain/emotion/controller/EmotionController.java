package com.ssafy.developermaker.domain.emotion.controller;

import com.ssafy.developermaker.domain.emotion.application.EmotionService;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import com.ssafy.developermaker.global.util.AwsS3Service;
import io.swagger.annotations.ApiParam;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/emotion")
@RequiredArgsConstructor
public class EmotionController {
    private final EmotionService emotionService;
    private final AwsS3Service awsS3Service;
    @GetMapping
    public ResponseEntity<BaseResponseBody> getAlbum(@RequestPart (value = "file", required = false) @ApiParam(value="이미지 파일") MultipartFile file){
        String imgUrl = awsS3Service.uploadImage(file);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", emotionService.getResult(imgUrl)));
    }
}
