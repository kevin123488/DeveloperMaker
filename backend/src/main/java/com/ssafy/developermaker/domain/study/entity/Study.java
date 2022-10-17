package com.ssafy.developermaker.domain.study.entity;

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
public class Study {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long studyId;

    @Column(nullable = false, length = 30)
    private String subject;

    @Column(nullable = false, length = 50)
    private String title;

    @Column(nullable = false)
    private Integer orders;

    @Column(nullable = false, length = 5000)
    private String content;

}
