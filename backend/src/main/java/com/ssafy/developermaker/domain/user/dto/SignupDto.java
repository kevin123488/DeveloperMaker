package com.ssafy.developermaker.domain.user.dto;

import com.ssafy.developermaker.domain.user.entity.Language;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class SignupDto {
    private String nickname;
    private Language language;

}
