package com.ssafy.developermaker.domain.codingtest.application;

import com.ssafy.developermaker.domain.codingtest.dto.*;
import com.ssafy.developermaker.domain.codingtest.entity.Cote;
import com.ssafy.developermaker.domain.codingtest.entity.UserCote;
import com.ssafy.developermaker.domain.codingtest.repository.CoteRepository;
import com.ssafy.developermaker.domain.codingtest.repository.UserCoteRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import kong.unirest.HttpResponse;
import kong.unirest.Unirest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class CoteService {

    private final UserRepository userRepository;
    private final UserCoteRepository userCoteRepository;
    private final CoteRepository coteRepository;
    @Value("${properties.file.HOST_JAVA}")
    private String rapidAPI_HOST;
    @Value("${properties.file.KEY_JAVA}")
    private String rapidAPI_KEY;


    public CoteListResponseDto getList(String email, CoteListRequestDto coteListRequestDto) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        PageRequest pageRequest = PageRequest.of(coteListRequestDto.getOffset(), coteListRequestDto.getLimit());
        Page<Cote> page = coteRepository.findAll(pageRequest);

        CoteListResponseDto coteListResponseDto = new CoteListResponseDto(page.getTotalElements() ,page.getTotalPages());
        List<CoteInfoDto> coteInfoList = page.stream().map(cote ->
                        new CoteInfoDto(cote.getCoteId(), cote.getTitle(), cote.getProblem(),
                                userCoteRepository.findByUserAndCote(user, cote).isPresent()
                                        ? userCoteRepository.findByUserAndCote(user, cote).get().getCorrect() : 0))
                .collect(Collectors.toList());

        coteListResponseDto.setCoteInfoList(coteInfoList);
        return coteListResponseDto;
    }

    @Transactional
    public CoteResultDto submitCote(String email, Long coteId, CoteSubmitRequestDto coteSubmitRequestDto) {
        Cote cote = coteRepository.findById(coteId).get();
        User user = userRepository.findByEmail(email).get();

        UserCote userCote;
        Optional<UserCote> userCoteOpt = userCoteRepository.findByUserAndCote(user, cote);

        // 정답 여부 API 통해 연산.
        CoteResultDto coteResultDto = compilerApi(coteSubmitRequestDto, cote);

        System.out.println(coteResultDto.getPass() + "\n" + coteResultDto.getMessage());
        if (userCoteOpt.isPresent()) { // 푼 기록이 있을 때.
            userCote = userCoteOpt.get();
            if (coteResultDto.getPass() && userCote.getCorrect() == 2) { // 맞췄을 때
                userCote.updateCorrect(1);
            }
        } else {
            userCoteRepository.save(UserCote.builder().cote(cote).user(user).correct(coteResultDto.getPass() ? 1 : 2).build());
        }


        return coteResultDto;
    }
    public String testCote(CoteTestRequestDto coteTestRequestDto){
        String error = null, output = "";
        String language = "0";
        if (coteTestRequestDto.getLanguage().equals("java")) {
            language = "4";
        } else if (coteTestRequestDto.getLanguage().equals("python")) {
            language = "5";
        } else if (coteTestRequestDto.getLanguage().equals("cpp")) {
            language = "7";
        } else if (coteTestRequestDto.getLanguage().equals("javascript")) {
            language = "17";
        }
        coteTestRequestDto.setCode(coteTestRequestDto.getCode().replaceFirst("Solution", "Progman"));
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("LanguageChoice", language);
        jsonObject.put("Program", coteTestRequestDto.getCode());
        jsonObject.put("Input", coteTestRequestDto.getInput());

        HttpResponse<String> response = Unirest.post("https://code-compiler.p.rapidapi.com/v2")
                .header("content-type", "application/json")
                .header("X-RapidAPI-Key", rapidAPI_KEY)
                .header("X-RapidAPI-Host", rapidAPI_HOST)
                .body(jsonObject.toString())
                .asString();
        try {
            JSONParser parser = new JSONParser();
            JSONObject jsonObj = (JSONObject) parser.parse(response.getBody());
            if (jsonObj.get("Errors") != null) {
                error = jsonObj.get("Errors").toString();
            } else if (jsonObj.get("Result") != null) {
                output = jsonObj.get("Result").toString();
                if(output.charAt(output.length() - 1) == '\n') output = output.substring(0, output.length() - 1);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        if(error != null){
            output = error;
        }
        return output;
    }

    public CoteResultDto compilerApi(CoteSubmitRequestDto coteSubmitRequestDto, Cote cote) {
        String error = null, output = "";
        CoteResultDto coteResultDto = CoteResultDto.builder().build();
        coteResultDto.setPass(false);
        String language = "0";
        if (coteSubmitRequestDto.getLanguage().equals("java")) {
            language = "4";
        } else if (coteSubmitRequestDto.getLanguage().equals("python")) {
            language = "5";
        } else if (coteSubmitRequestDto.getLanguage().equals("cpp")) {
            language = "7";
        } else if (coteSubmitRequestDto.getLanguage().equals("javascript")) {
            language = "17";
        }
        coteSubmitRequestDto.setCode(coteSubmitRequestDto.getCode().replaceFirst("Solution", "Progman"));
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("LanguageChoice", language);
        jsonObject.put("Program", coteSubmitRequestDto.getCode());
        jsonObject.put("Input", cote.getAnswerInput());

        //long start = System.currentTimeMillis();
        HttpResponse<String> response = Unirest.post("https://code-compiler.p.rapidapi.com/v2")
                .header("content-type", "application/json")
                .header("X-RapidAPI-Key", rapidAPI_KEY)
                .header("X-RapidAPI-Host", rapidAPI_HOST)
                .body(jsonObject.toString())
                .asString();
        try {
            JSONParser parser = new JSONParser();
            JSONObject jsonObj = (JSONObject) parser.parse(response.getBody());
            if (jsonObj.get("Errors") != null) {
                error = jsonObj.get("Errors").toString();
            } else if (jsonObj.get("Result") != null) {
                output = jsonObj.get("Result").toString();
                if(output.charAt(output.length() - 1) == '\n') output = output.substring(0, output.length() - 1);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //long time = System.currentTimeMillis() - start - 2000;

        //coteResultDto.setSpendTime(time);
        if (error != null) {
            coteResultDto.setMessage(error);
        }
//        else if (time > cote.getTimeLimit()) { // 시간 초과 경우.
//            coteResultDto.setMessage("제한시간 초과입니다. : " + time + "ms");
//        }
        else if (!cote.getAnswerOutput().equals(output)) {
            coteResultDto.setMessage("틀렸어.");
        } else {
            coteResultDto.setPass(true);
            coteResultDto.setMessage("축하해. 정답이야.");
        }
        System.out.println(response.getBody());

        return coteResultDto;
    }


}
