package com.ssafy.developermaker.domain.memory.dto;

import com.ssafy.developermaker.domain.memory.entity.Memory;
import com.ssafy.developermaker.domain.user.dto.UserDto;
import com.ssafy.developermaker.domain.user.entity.User;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemoryDto {

    private String script;
    private Integer chapter;
    private Integer slot;
    private Integer likeSpring;
    private Integer likeSummer;
    private Integer likeAutumn;
    private Integer likeWinter;
    private UserDto userDto;

    public Memory toEntity(User user) {
        return Memory.builder()
                .script(this.script)
                .chapter(this.chapter)
                .slot(this.slot)
                .likeSpring(this.likeSpring)
                .likeSummer(this.likeSummer)
                .likeAutumn(this.likeAutumn)
                .likeWinter(this.likeWinter)
                .user(user)
                .build();
    }

}
