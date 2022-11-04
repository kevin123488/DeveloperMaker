package com.ssafy.developermaker.domain.codingtest.entity;

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
public class Cote {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long coteId;

    @Column(nullable = false,length = 50)
    private String title;

    @Column(nullable = false,length = 5000)
    private String problem;

    @Column(length = 10000)
    private String answerInput;

    private Long timeLimit;

    @Column(nullable = false, length = 1000)
    private String answerOutput;

}
