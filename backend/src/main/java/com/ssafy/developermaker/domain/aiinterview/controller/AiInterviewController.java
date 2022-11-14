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

    @GetMapping("/{subject}")
    @ApiOperation(value = "AI면접 문제 요청", notes = "문제를 요청하면 하나를 랜덤으로 반환함.")
    public ResponseEntity<BaseResponseBody> getQuestion(@PathVariable String subject){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", aiInterviewService.getQuestion(subject)));
    }

    @PostMapping("/{no}")
    @ApiOperation(value = "AI면접 결과 요청", notes   = "jpg와 txt를 보내면 결과를 반환.")
    public ResponseEntity<BaseResponseBody> analyzeInterview(@PathVariable Integer no,@RequestPart(value = "file") @ApiParam(value = "이미지 파일") MultipartFile file, @RequestPart(value = "aiInterviewRequestDto") AiInterviewRequestDto aiInterviewRequestDto) {
        String imgUrl = awsS3Service.uploadImage(file);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", aiInterviewService.getResult(no, imgUrl, aiInterviewRequestDto.getInterviewText())));
    }

    @PostMapping("/isFaceImage")
    @ApiOperation(value = "이미지 얼굴 인식 여부 반환", notes = "jpg를 보내면 얼굴 인식 여부를 반환.")
    public ResponseEntity<BaseResponseBody> analyzeImage(@RequestPart(value = "file") @ApiParam(value = "이미지 파일") MultipartFile file){
        String imgUrl = awsS3Service.uploadImage(file);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", aiInterviewService.getIsFace(imgUrl)));
    }

}
