package com.ssafy.developermaker.domain.progress.entity;

import com.ssafy.developermaker.domain.progress.dto.ProgressDto;
import com.ssafy.developermaker.domain.user.entity.User;
import io.swagger.annotations.ApiModelProperty;
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
public class Progress {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long progressId;

    @Column(nullable = false)
    @ApiModelProperty(value="CS 진행도", required = true)
    private Integer cs = 0;

    @Column(nullable = false)
    @ApiModelProperty(value="알고리즘 진행도", required = true)
    private Integer algo = 0;

    @Column(nullable = false)
    @ApiModelProperty(value="프론트엔드 진행도", required = true)
    private Integer front = 0;

    @Column(nullable = false)
    @ApiModelProperty(value="백엔드 진행도", required = true)
    private Integer back = 0;

    @Column(nullable = false)
    @ApiModelProperty(value="언어 진행도", required = true)
    private Integer language = 0;

    @OneToOne(mappedBy = "progress")
    private User user;

    public void setUser(User user) {
        this.user = user;
    }

    public ProgressDto toDto() {
        return ProgressDto.builder()
                .cs(this.cs)
                .algo(this.algo)
                .front(this.front)
                .back(this.back)
                .language(this.language)
                .build();
    }

}
