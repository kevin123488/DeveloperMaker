package com.ssafy.developermaker.domain.aiinterview.entity;

import org.springframework.beans.factory.annotation.Value;

import javax.persistence.*;

@Entity
public class AiInterviewQuestion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long aiqId;

    @Column(nullable = false)
    private Integer no;

    @Column(nullable = false)
    private String type;

    @Column(nullable = false)
    private String question;

    @Column(nullable = false)
    private String keyword;


}
