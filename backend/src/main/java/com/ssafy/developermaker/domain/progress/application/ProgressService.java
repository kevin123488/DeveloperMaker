package com.ssafy.developermaker.domain.progress.application;

import com.ssafy.developermaker.domain.progress.dto.ProgressDto;
import com.ssafy.developermaker.domain.progress.dto.RankingDto;
import com.ssafy.developermaker.domain.progress.dto.RankingResponseDto;
import com.ssafy.developermaker.domain.progress.entity.Progress;
import com.ssafy.developermaker.domain.progress.repository.ProgressRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import com.ssafy.developermaker.global.util.RedisUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class ProgressService {

    private final UserRepository userRepository;
    private final ProgressRepository progressRepository;
    private final RedisUtil redisUtil;

    public ProgressDto getProgress(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        Progress progress = user.getProgress();

        int csCount = Integer.parseInt(redisUtil.getData("csCount"));
        int algoCount = Integer.parseInt(redisUtil.getData("algoCount"));
        int backCount = Integer.parseInt(redisUtil.getData("backCount"));
        int frontCount = Integer.parseInt(redisUtil.getData("frontCount"));
        int langCount = Integer.parseInt(redisUtil.getData("langCount"));

        return new ProgressDto(progress, csCount, algoCount, backCount, frontCount, langCount);
    }


    public RankingResponseDto getRankList() {
        int csCount = Integer.parseInt(redisUtil.getData("csCount"));
        int algoCount = Integer.parseInt(redisUtil.getData("algoCount"));
        int backCount = Integer.parseInt(redisUtil.getData("backCount"));
        int frontCount = Integer.parseInt(redisUtil.getData("frontCount"));
        int langCount = Integer.parseInt(redisUtil.getData("langCount"));

        List<Progress> csRanking = progressRepository.findTop10ByOrderByCsDescModifiedDateAsc();
        List<RankingDto> csRank = new ArrayList<>();
        for(Progress progress : csRanking) {
            csRank.add(new RankingDto(progress.getUser().getNickname(), progress.getUser().getProfileImg(),
                    (int) ((double) progress.getCs() / csCount * 100)));
        }

        List<Progress> algoRanking = progressRepository.findTop10ByOrderByAlgorithmDescModifiedDateAsc();
        List<RankingDto> algoRank = new ArrayList<>();
        for(Progress progress : algoRanking) {
            algoRank.add(new RankingDto(progress.getUser().getNickname(), progress.getUser().getProfileImg(),
                    (int) ((double) progress.getAlgorithm() / algoCount * 100)));
        }

        List<Progress> backRanking = progressRepository.findTop10ByOrderByBackendDescModifiedDateAsc();
        List<RankingDto> backRank = new ArrayList<>();
        for(Progress progress : backRanking) {
            backRank.add(new RankingDto(progress.getUser().getNickname(), progress.getUser().getProfileImg(),
                    (int) ((double) progress.getBackend() / backCount * 100)));
        }

        List<Progress> frontRanking = progressRepository.findTop10ByOrderByFrontendDescModifiedDateAsc();
        List<RankingDto> frontRank = new ArrayList<>();
        for(Progress progress : frontRanking) {
            frontRank.add(new RankingDto(progress.getUser().getNickname(), progress.getUser().getProfileImg(),
                    (int) ((double) progress.getFrontend() / frontCount * 100)));
        }

        List<Progress> langRanking = progressRepository.findTop10ByOrderByLanguageDescModifiedDateAsc();
        List<RankingDto> langRank = new ArrayList<>();
        for(Progress progress : langRanking) {
            langRank.add(new RankingDto(progress.getUser().getNickname(), progress.getUser().getProfileImg(),
                    (int) ((double) progress.getLanguage() / langCount * 100)));
        }

        return new RankingResponseDto(csRank,algoRank,backRank,frontRank,langRank);
    }


}
