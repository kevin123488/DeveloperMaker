package com.ssafy.developermaker.domain.user.dto;

import com.ssafy.developermaker.domain.user.entity.Gender;
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
    private String loginType;
    private Gender gender;
    private String language;

    public User toEntity(LoginType loginType){
        return User.builder()
                .email(this.getEmail())
                .socialId(this.getSocialId())
                .nickname(this.getNickname())
                .loginType(loginType)
                .gender(this.getGender())
                .language(this.getLanguage())
                .build();
    }
}
