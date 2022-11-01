package com.ssafy.developermaker.domain.codingtest.entity;

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
public class UserCote {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userCoteId;

    private Boolean correct;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "userId")
    private User user;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "coteId")
    private Cote cote;

}
