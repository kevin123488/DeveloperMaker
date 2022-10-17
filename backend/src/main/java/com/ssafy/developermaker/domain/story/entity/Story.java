package com.ssafy.developermaker.domain.story.entity;

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
public class Story {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long storyId;

    @Column(nullable = false, length = 20)
    private String type;

    @Column(nullable = false)
    private Integer chapter;

    @Column(nullable = false)
    private Integer orders;

    @Column(length = 20)
    private String speaker;

    @Column(nullable = false, length = 1000)
    private String content;

    @Column(length = 300)
    private String backgroundImg;

    @Column(length = 300)
    private String characterImg1;

    @Column(length = 300)
    private String characterImg2;

    @Column(length = 300)
    private String characterImg3;

    @Column(nullable = false)
    private Boolean isProblem;

    @Column(length = 500)
    private String problem;

    @Column(length = 200)
    private String example;

    @Column(length = 30)
    private String answer;


}
