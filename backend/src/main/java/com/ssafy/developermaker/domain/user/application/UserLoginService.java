package com.ssafy.developermaker.domain.user.application;

import com.ssafy.developermaker.domain.memory.entity.Memory;
import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.progress.repository.ProgressRepository;
import com.ssafy.developermaker.domain.user.dto.LoginDto;
import com.ssafy.developermaker.domain.user.dto.TokenDto;
import com.ssafy.developermaker.domain.user.dto.UserDto;
import com.ssafy.developermaker.domain.user.entity.Language;
import com.ssafy.developermaker.domain.user.entity.LoginType;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import com.ssafy.developermaker.global.util.JwtFilter;
import com.ssafy.developermaker.global.util.RedisUtil;
import com.ssafy.developermaker.global.util.TokenProvider;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class UserLoginService {

    private final TokenProvider tokenProvider;
    private final AuthenticationManagerBuilder authenticationManagerBuilder;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final ProgressRepository progressRepository;
    private final RedisUtil redisUtil;

    public ResponseEntity<TokenDto> login(LoginDto loginDto) {
        //  LoginDto의 userName,Password를 받아서 UsernamePasswordAuthenticationToken 객체를 생성한다
        UsernamePasswordAuthenticationToken authenticationToken =
                new UsernamePasswordAuthenticationToken(loginDto.getEmail(), loginDto.getPassword());
        log.info(authenticationToken.toString());
        // authenticationToken 을 이용해서 Authentication 객체를 생성하려고 authenticate메서드가 실행될때
        // CustomUserDetailsService 의 loadUserByUsername 메서드가 실행된다.
        Authentication authentication = authenticationManagerBuilder.getObject().authenticate(authenticationToken);
        // 생성된 Authentication 객체를 SecurityContextHolder에 저장하고,
        SecurityContextHolder.getContext().setAuthentication(authentication);
        
        // 그 인증정보를 기반으로 토큰을 생성한다
        String accessToken = tokenProvider.createAccessToken(authentication);
        String refreshToken = tokenProvider.createRefreshToken(authentication);
        // redis refresh token save
        String refreshKey = loginDto.getEmail() + "-refresh";
        redisUtil.setDataExpire(refreshKey,refreshToken,86400 * 14L);

        HttpHeaders httpHeaders = new HttpHeaders();
        // 생성한 토큰을 Response 헤더에 넣어주고,
        httpHeaders.add(JwtFilter.AUTHORIZATION_HEADER, "Bearer " + accessToken);
        // TokenDto에도 넣어서 RequestBody로 리턴해준다
//        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "success", jwt));
        return new ResponseEntity<>(new TokenDto(accessToken,refreshToken), httpHeaders, HttpStatus.OK);
    }

    @Transactional
    public void signup(UserDto userDto, LoginType loginType) {
        userDto.setSocialId(passwordEncoder.encode(userDto.getSocialId()));
        userDto.setLanguage(Language.NONE);

        Progress progress = new Progress();
        progressRepository.save(progress);

        User user = userDto.toEntity(loginType,progress);
        userRepository.save(user);

        int userCount = Integer.parseInt(redisUtil.getData("userCount")) + 1;
        redisUtil.setData("userCount", String.valueOf(userCount));
    }

    public void logout(HttpServletRequest request) {
        String accessToken = request.getHeader("access-token").substring(7);
        String userEmail = String.valueOf(tokenProvider.getPayload(accessToken).get("sub"));

        // redis refresh token delete
        String refreshKey = userEmail + "-refresh";
        redisUtil.deleteData(refreshKey);

        // 액세스 토큰 만료시간 설정 후 저장
        redisUtil.setBlackList("blacklist",accessToken);
    }

    public TokenDto recreateToken(TokenDto tokenDto) {
        String userEmail = String.valueOf(tokenProvider.getPayload(tokenDto.getAccessToken()).get("sub"));
        String refreshToken = redisUtil.getData(userEmail + "-refresh");

        if(tokenDto.getRefreshToken().equals(refreshToken) && tokenProvider.validateToken(refreshToken)) {
            User user = userRepository.findByEmail(userEmail).orElseThrow(UserNotFoundException::new);

            UsernamePasswordAuthenticationToken authenticationToken =
                    new UsernamePasswordAuthenticationToken(user.getEmail(), user.getSocialId());
            Authentication authentication = authenticationManagerBuilder.getObject().authenticate(authenticationToken);
            SecurityContextHolder.getContext().setAuthentication(authentication);

            String accessToken = tokenProvider.createAccessToken(authentication);
            tokenDto.setAccessToken(accessToken);
        } else return null;
        return tokenDto;
    }
}
