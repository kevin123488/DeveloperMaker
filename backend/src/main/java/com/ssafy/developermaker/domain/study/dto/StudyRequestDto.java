package com.ssafy.developermaker.domain.study.dto;

import com.ssafy.developermaker.domain.study.entity.Category;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class StudyRequestDto {
    private Category category;
    private String subject;
    private int offset;
    private int limit;
}
