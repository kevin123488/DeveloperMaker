package com.ssafy.developermaker.domain.user.controller;

import com.ssafy.developermaker.domain.user.application.KakaoUserService;
import com.ssafy.developermaker.domain.user.application.NaverUserService;
import com.ssafy.developermaker.domain.user.application.UserManageService;
import com.ssafy.developermaker.domain.user.dto.SignupDto;
import com.ssafy.developermaker.domain.user.dto.UserDto;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@Slf4j
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {

    private final KakaoUserService kakaoUserService;
    private final NaverUserService naverUserService;
    private final UserManageService userManageService;

    @PostMapping("/kakao")
    @ApiOperation(value = "카카오 로그인", notes = "카카오 아이디로 로그인합니다.")
    public HttpEntity<?> kakaoLogin(@RequestBody HashMap<String, String> param) {
        kakaoUserService.getUserInfoByAccessToken(param.get("access_token"));
        UserDto userDto = kakaoUserService.getUserInfoByAccessToken(param.get("access_token"));
        return kakaoUserService.login(userDto);
    }

    @PostMapping("/naver")
    @ApiOperation(value = "네이버 로그인", notes = "네이버 아이디로 로그인합니다.")
    public HttpEntity<?> naverLogin(@RequestBody HashMap<String, String> param) {
        naverUserService.getUserInfoByAccessToken(param.get("access_token"));
        UserDto userDto = naverUserService.getUserInfoByAccessToken(param.get("access_token"));
        return naverUserService.login(userDto);
    }

    @GetMapping
    @ApiOperation(value = "유저정보 확인")
    @ApiResponses({
            @ApiResponse(code = 200, message = "Success", response = BaseResponseBody.class)
    })
    public ResponseEntity<BaseResponseBody> getInfo(@AuthenticationPrincipal String email) {
        UserDto userInfo = userManageService.getInfo(email);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", userInfo));
    }

    @PutMapping
    @ApiOperation(value = "유저정보 수정", notes = "유저의 정보를 수정합니다")
    public ResponseEntity<BaseResponseBody> modify(
            @RequestPart(value = "userDto", required = false) UserDto userDto,
            @AuthenticationPrincipal String email) {
        UserDto modifyUser = userManageService.modify(userDto, email);
        if(modifyUser == null) return ResponseEntity.status(400).body(BaseResponseBody.of(400, "fail", null));
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", modifyUser));
    }

    @DeleteMapping
    @ApiOperation(value = "유저 삭제")
    public ResponseEntity<BaseResponseBody> delete(@AuthenticationPrincipal String email) {
        boolean delete = userManageService.delete(email);
        if(!delete) return ResponseEntity.status(400).body(BaseResponseBody.of(400, "fail", null));
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", null));
    }

    @PutMapping("/signup")
    @ApiOperation(value = "최초 유저 닉네임,언어 설정", notes = "최초 유저가입시 닉네임과 언어를 저장합니다")
    public ResponseEntity<BaseResponseBody> signup(@AuthenticationPrincipal String email,
                                                   @RequestBody SignupDto signupDto) {
        UserDto user = userManageService.signup(email, signupDto);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", user));
    }

}
