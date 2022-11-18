package com.ssafy.developermaker.domain.user.dto;

import com.ssafy.developermaker.domain.progress.dto.ProgressDto;
import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.user.entity.Language;
import com.ssafy.developermaker.domain.user.entity.LoginType;
import com.ssafy.developermaker.domain.user.entity.User;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {

    private String email;
    private String socialId;
    private String nickname;
    private LoginType loginType;
    private Language language;
    private Integer profile;

    public User toEntity(LoginType loginType, Progress progress){
        return User.builder()
                .email(this.getEmail())
                .socialId(this.getSocialId())
                .nickname(this.getNickname())
                .loginType(loginType)
                .language(this.getLanguage())
                .progress(progress)
                .profile(this.getProfile())
                .build();
    }
}
