package com.ssafy.developermaker.domain.progress.dto;


import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.quiz.repository.QuizRepository;
import io.swagger.models.auth.In;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProgressDto {

    private int cs;
    private int algorithm;
    private int backend;
    private int frontend;
    private int language;

    public ProgressDto(Progress progress, int csCount, int algoCount, int backCount, int frontCount, int langCount) {

        this.cs = (int) ((double) progress.getCs() / csCount * 100);
        this.algorithm = (int) ((double) progress.getAlgorithm() / algoCount * 100);
        this.backend = (int) ((double) progress.getBackend() / backCount * 100);
        this.frontend = (int) ((double) progress.getFrontend() / frontCount * 100);
        this.language = (int) ((double) progress.getLanguage() / langCount * 100);
    }
}
