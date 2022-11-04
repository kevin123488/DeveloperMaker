package com.ssafy.developermaker.domain.codingtest.application;

import com.ssafy.developermaker.domain.codingtest.dto.CoteListRequestDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteListResponseDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteResultDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteSubmitRequestDto;
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


    public List<CoteListResponseDto> getList(String email, CoteListRequestDto coteListRequestDto) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        PageRequest pageRequest = PageRequest.of(coteListRequestDto.getOffset(), coteListRequestDto.getLimit());
        Page<Cote> page = coteRepository.findAll(pageRequest);

        return page.stream().map(cote ->
                        new CoteListResponseDto(cote.getCoteId(), cote.getTitle(), cote.getProblem(),
                                userCoteRepository.findByUserAndCote(user, cote).isPresent()
                                        ? userCoteRepository.findByUserAndCote(user, cote).get().getCorrect() : 0))
                .collect(Collectors.toList());
    }

    @Transactional
    public String submitCote(String email, Long coteId, CoteSubmitRequestDto coteSubmitRequestDto) {
        String response = "";
        Cote cote = coteRepository.findById(coteId).get();
        User user = userRepository.findByEmail(email).get();

        UserCote userCote;
        Optional<UserCote> userCoteOpt = userCoteRepository.findByUserAndCote(user, cote);

        // 정답 여부 API 통해 연산.
        CoteResultDto coteResultDto = CompilerApi(coteSubmitRequestDto, cote);


        if (userCoteOpt.isPresent()) { // 푼 기록이 있을 때.
            userCote = userCoteOpt.get();
            if (coteResultDto.getPass()) { // 맞췄을 때
            }
        } else {
            userCote = new UserCote();
            userCote.builder().cote(cote).user(user).correct(coteResultDto.getPass() ? 1 : -1).build();
            userCoteRepository.save(userCote);
        }


        return response = coteResultDto.getMessage() + "\n" + coteResultDto.getSpendTime();
    }

    public CoteResultDto CompilerApi(CoteSubmitRequestDto coteSubmitRequestDto, Cote cote) {
        String error = null, output = "";
        CoteResultDto coteResultDto = CoteResultDto.builder().build();
        String language = "0";
        if (coteSubmitRequestDto.getLanguage().equals("java")) {
            language = "4";
        } else if (coteSubmitRequestDto.getLanguage().equals("python")) {
            language = "5";
        } else if (coteSubmitRequestDto.getLanguage().equals("cpp")) {
            language = "7";
        }

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("LanguageChoice", language);
        jsonObject.put("Program", coteSubmitRequestDto.getCode());
        jsonObject.put("Input", cote.getAnswerInput());

        long start = System.currentTimeMillis();
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
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        long time = System.currentTimeMillis() - start;
        coteResultDto.setSpendTime(time);
        if (error != null) {
            coteResultDto.setMessage(error);
        } else if (time > cote.getTimeLimit()) { // 시간 초과 경우.
            coteResultDto.setMessage("제한시간 초과입니다. : " + time + "ms");
        } else if (!cote.getAnswerOutput().equals(output)) {
            coteResultDto.setMessage("정답이 일치하지 않습니다.");
        } else {
            coteResultDto.setPass(true);
            coteResultDto.setMessage("정답입니다!");
        }
        System.out.println(response.getBody());

        return coteResultDto;
    }


}
