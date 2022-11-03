package com.ssafy.developermaker.global;

import com.ssafy.developermaker.domain.user.dto.TokenDto;
import com.ssafy.developermaker.global.util.RedisUtil;
import com.ssafy.developermaker.global.util.TokenProvider;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@Slf4j
@RequestMapping("/refresh")
@RequiredArgsConstructor
public class RefreshController {

    private final RedisUtil redisUtil;
    private final TokenProvider tokenProvider;
    private final AuthenticationManagerBuilder authenticationManagerBuilder;

    @PostMapping
    public void recreateToken(@RequestBody TokenDto tokenDto) {
        String userEmail = String.valueOf(tokenProvider.getPayload(tokenDto.getAccessToken()).get("sub"));
        String refreshToken = redisUtil.getData(userEmail + "-refresh");

        if(tokenDto.getRefreshToken().equals(refreshToken)) {
            //  LoginDto의 userName,Password를 받아서 UsernamePasswordAuthenticationToken 객체를 생성한다
            UsernamePasswordAuthenticationToken authenticationToken =
                    new UsernamePasswordAuthenticationToken(null, null);
            log.info(authenticationToken.toString());
            // authenticationToken 을 이용해서 Authentication 객체를 생성하려고 authenticate메서드가 실행될때
            // CustomUserDetailsService 의 loadUserByUsername 메서드가 실행된다.
            Authentication authentication = authenticationManagerBuilder.getObject().authenticate(authenticationToken);
            // 생성된 Authentication 객체를 SecurityContextHolder에 저장하고,
            SecurityContextHolder.getContext().setAuthentication(authentication);

            String accessToken = tokenProvider.createAccessToken(authentication);
        }

    }
}
