package com.ssafy.developermaker.domain.user.controller;

import com.ssafy.developermaker.domain.user.application.KakaoUserService;
import com.ssafy.developermaker.domain.user.application.NaverUserService;
import com.ssafy.developermaker.domain.user.application.UserManageService;
import com.ssafy.developermaker.domain.user.dto.UserDto;
import com.ssafy.developermaker.global.model.BaseResponseBody;
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
    public HttpEntity<?> kakaoLogin(@RequestBody HashMap<String, String> param) {
        kakaoUserService.getUserInfoByAccessToken(param.get("access_token"));
        UserDto userDto = kakaoUserService.getUserInfoByAccessToken(param.get("access_token"));
        return kakaoUserService.login(userDto);
    }

    @PostMapping("/naver")
    public HttpEntity<?> naverLogin(@RequestBody HashMap<String, String> param) {
        naverUserService.getUserInfoByAccessToken(param.get("access_token"));
        UserDto userDto = naverUserService.getUserInfoByAccessToken(param.get("access_token"));
        return naverUserService.login(userDto);
    }

    @GetMapping
    public ResponseEntity<BaseResponseBody> getInfo(@AuthenticationPrincipal String email) {
        UserDto userInfo = userManageService.getInfo(email);
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", userInfo));
    }

    @PostMapping
    public ResponseEntity<BaseResponseBody> modify(
            @RequestPart(value = "userDto", required = false) UserDto userDto,
            @AuthenticationPrincipal String email) {
        UserDto modifyUser = userManageService.modify(userDto, email);
        if(modifyUser == null) return ResponseEntity.status(200).body(BaseResponseBody.of(400, "fail", null));
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", modifyUser));
    }

    @DeleteMapping
    public ResponseEntity<BaseResponseBody> delete(@AuthenticationPrincipal String email) {
        boolean delete = userManageService.delete(email);

        if(!delete) return ResponseEntity.status(400).body(BaseResponseBody.of(400, "fail", null));
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", null));
    }

}
