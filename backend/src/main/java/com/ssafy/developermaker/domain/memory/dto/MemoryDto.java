package com.ssafy.developermaker.domain.memory.dto;

import com.ssafy.developermaker.domain.memory.entity.Memory;
import com.ssafy.developermaker.domain.memory.entity.Story;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemoryDto {

    private Story story;
    private Integer chapter;
    private Integer slot;
    private Integer likeA;
    private Integer likeB;
    private Integer likeC;
    private Integer likeD;

    public Memory toEntity() {
        return Memory.builder()
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
