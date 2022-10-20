package com.ssafy.developermaker.domain.memory.entity;

import com.ssafy.developermaker.domain.memory.dto.MemoryDto;
import com.ssafy.developermaker.domain.user.dto.UserDto;
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

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long memoryId;

    @Column(nullable = false)
    @ApiModelProperty(value = "저장 슬롯", required = true)
    private Integer slot;

    @ApiModelProperty(value = "스크립트명", required = true)
    @Column(nullable = false, length = 50)
    private String script;

    @Column(nullable = false)
    @ApiModelProperty(value = "진행 단계", required = true)
    private Integer chapter;

    @Column(nullable = false)
    @ApiModelProperty(value = "Spring 호감도", required = true)
    private Integer likeSpring = 0;

    @Column(nullable = false)
    @ApiModelProperty(value = "Summer 호감도", required = true)
    private Integer likeSummer = 0;

    @Column(nullable = false)
    @ApiModelProperty(value = "Autumn 호감도", required = true)
    private Integer likeAutumn = 0;

    @Column(nullable = false)
    @ApiModelProperty(value = "Winter 호감도", required = true)
    private Integer likeWinter = 0;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "userId")
    private User user;

    public void updateMemory(MemoryDto memoryDto) {
        this.slot = memoryDto.getSlot();
        this.script = memoryDto.getScript();
        this.chapter = memoryDto.getChapter();
        this.likeSpring = memoryDto.getLikeSpring();
        this.likeSummer = memoryDto.getLikeSummer();
        this.likeAutumn = memoryDto.getLikeAutumn();
        this.likeWinter = memoryDto.getLikeWinter();
    }

    public MemoryDto toDto() {
        return MemoryDto.builder()
                .slot(this.slot)
                .script(this.script)
                .chapter(this.chapter)
                .likeSpring(this.likeSpring)
                .likeSummer(this.likeSummer)
                .likeAutumn(this.likeAutumn)
                .likeWinter(this.likeWinter)
                .userDto(this.user.toDto())
                .build();
    }

}
