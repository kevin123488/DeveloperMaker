package com.ssafy.developermaker.domain.memory.entity;

import com.ssafy.developermaker.domain.memory.dto.MemoryDto;
import com.ssafy.developermaker.domain.user.entity.User;
import io.swagger.annotations.ApiModelProperty;
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
public class Memory {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long memoryId;

    @Enumerated(EnumType.STRING)
    @ApiModelProperty(value="선택 스토리", example = "SPRING", required = true)
    @Column(nullable = false, length = 20)
    private Story story;

    @Column(nullable = false)
    @ApiModelProperty(value="진행 챕터", required = true)
    private Integer chapter;

    @Column(nullable = false)
    @ApiModelProperty(value="저장 슬롯", required = true)
    private Integer slot;

    @Column(nullable = false)
    @ApiModelProperty(value="Spring 호감도", required = true)
    private Integer likeA;

    @Column(nullable = false)
    @ApiModelProperty(value="Summer 호감도", required = true)
    private Integer likeB;

    @Column(nullable = false)
    @ApiModelProperty(value="Authumn 호감도", required = true)
    private Integer likeC;

    @Column(nullable = false)
    @ApiModelProperty(value="Winter 호감도", required = true)
    private Integer likeD;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "userId")
    private User user;

    public MemoryDto toDto() {
        return MemoryDto.builder()
                .story(this.story)
                .chapter(this.chapter)
                .slot(this.slot)
                .likeA(this.likeA)
                .likeB(this.likeB)
                .likeC(this.likeC)
                .likeD(this.likeD)
                .build();
    }

}
