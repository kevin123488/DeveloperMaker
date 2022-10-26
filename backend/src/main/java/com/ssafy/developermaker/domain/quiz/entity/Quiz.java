package com.ssafy.developermaker.domain.quiz.entity;


import com.ssafy.developermaker.domain.quiz.dto.QuizResponseDto;
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
public class Quiz {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long quizId;

    @Column(nullable = false)
    private Integer no;

    @Column(nullable = false, length = 30)
    private String subject;

    @Column(nullable = false, length = 50)
    private String title;

    @Column(nullable = false, length = 500)
    private String problem;

    @Column(nullable = false, length = 200)
    private String example;

    @Column(nullable = false, length = 30)
    private String answer;

    public QuizResponseDto toDto() {
        return QuizResponseDto.builder().quizId(quizId).no(no).subject(subject).title(title).problem(problem).example(example).build();
    }
}
