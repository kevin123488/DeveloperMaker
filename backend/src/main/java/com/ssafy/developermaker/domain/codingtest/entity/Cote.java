package com.ssafy.developermaker.domain.codingtest.entity;

import com.ssafy.developermaker.domain.codingtest.dto.CoteDto;
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

    @Column(nullable = false)
    private Integer no;

    @Column(nullable = false,length = 50)
    private String title;

    @Column(nullable = false,length = 5000)
    private String problem;

    @Column(nullable = true, length = 10000)
    private String answerInput;
    @Column(nullable = false, length = 1000)
    private String answerOutput;


    public CoteDto toDto(Boolean correct) {
        return CoteDto.builder()
                .no(this.no)
                .title(this.title)
                .problem(this.problem)
                .correct(correct)
                .build();
    }

}
