package com.ssafy.developermaker.domain.quiz.entity;

import com.ssafy.developermaker.domain.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

import static javax.persistence.FetchType.LAZY;

@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserQuiz {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userQuizId;

    private Integer correct;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "userId")
    private User user;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "quizId")
    private Quiz quiz;

    public void updateCorrect(Integer correct) {
        this.correct = correct;
    }
}
