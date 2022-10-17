package com.ssafy.developermaker.domain.user.entity;

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
public class StoryLevel {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long storyLevelId;

    @Column(nullable = false)
    private Integer introProc;

    @Column(nullable = false)
    private Integer aProc;

    @Column(nullable = false)
    private Integer bProc;

    @Column(nullable = false)
    private Integer cProc;

    @Column(nullable = false)
    private Integer dProc;

}
