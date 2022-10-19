package com.ssafy.developermaker.domain.processivity.entity;

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
public class Processivity {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long processivityId;

    @Column(nullable = false)
    @ApiModelProperty(value="CS 진행도", required = true)
    private Integer cs;

    @Column(nullable = false)
    @ApiModelProperty(value="알고리즘 진행도", required = true)
    private Integer algo;

    @Column(nullable = false)
    @ApiModelProperty(value="프론트엔드 진행도", required = true)
    private Integer front;

    @Column(nullable = false)
    @ApiModelProperty(value="백엔드 진행도", required = true)
    private Integer back;

    @Column(nullable = false)
    @ApiModelProperty(value="언어 진행도", required = true)
    private Integer language;

    @OneToOne
    @JoinColumn(name = "userId")
    private User user;

}
