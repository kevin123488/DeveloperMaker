package com.ssafy.developermaker.domain.user.entity;

import com.ssafy.developermaker.domain.user.dto.UserDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class User {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;

    @Column(nullable = false, length = 50)
    private String email;

    @Column(nullable = false, length = 50)
    private String socialId;

    @Column(nullable = false, unique = true, length = 30)
    private String nickname;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 10)
    private Gender gender;

    @Column(nullable = false, length = 20)
    private String language;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private LoginType loginType;

    @OneToOne
    @JoinColumn(name = "storyLevelId")
    private StoryLevel storyLevel;

    @OneToOne
    @JoinColumn(name = "userStatsId")
    private UserStats userStats;

    public User updateNickname(String nickname) {
        this.nickname = nickname;
        return this;
    }

    public UserDto toDto() {
        return UserDto.builder()
                .email(this.email)
                .nickname(this.nickname)
                .loginType(this.loginType.toString())
                .gender(this.gender)
                .build();
    }

}
