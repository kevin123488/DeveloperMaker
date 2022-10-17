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
public class UserStats {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userStatsId;

    @Column(nullable = false)
    private Integer csStats = 0;

    @Column(nullable = false)
    private Integer algoStats = 0;

    @Column(nullable = false)
    private Integer langStats = 0;

    @Column(nullable = false)
    private Integer frameStats = 0;

    @Column(nullable = false)
    private Integer popularStats = 0;

}
