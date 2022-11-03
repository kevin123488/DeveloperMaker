package com.ssafy.developermaker.domain.codingtest.application;

import com.ssafy.developermaker.domain.codingtest.dto.CoteListRequestDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteListResponseDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteRequestDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteResultDto;
import com.ssafy.developermaker.domain.codingtest.entity.Cote;
import com.ssafy.developermaker.domain.codingtest.entity.UserCote;
import com.ssafy.developermaker.domain.codingtest.repository.CoteRepository;
import com.ssafy.developermaker.domain.codingtest.repository.UserCoteRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import kong.unirest.HttpResponse;
import kong.unirest.JsonNode;
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

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
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

    public String submitCote(String email, Long coteId, CoteRequestDto coteRequestDto) {
        String response = "";
        Cote cote = coteRepository.findById(coteId).get();
        User user = userRepository.findByEmail(email).get();

        UserCote userCote;
        Optional<UserCote> userCoteOpt = userCoteRepository.findByUserAndCote(user, cote);

        // 정답 여부 API 통해 연산.
        boolean correct = false;

        String code = coteRequestDto.getCode();
        CoteResultDto coteResultDto;
        coteResultDto = javaCompilerApi(coteRequestDto);


        if (userCoteOpt.isPresent()) { // 푼 기록이 있을 때.
            userCote = userCoteOpt.get();
            if (correct) {
            }
        } else {
            userCote = new UserCote();
        }


        return response;
    }

    public CoteResultDto javaCompilerApi(CoteRequestDto coteRequestDto) {
        CoteResultDto coteResultDto = CoteResultDto.builder().build();
        String language = "0";
        if (coteRequestDto.getLanguage().equals("java")) {
            language = "4";
        } else if (coteRequestDto.getLanguage().equals("python")) {
            language = "5";
        } else if (coteRequestDto.getLanguage().equals("cpp")) {
            language = "7";
        }


        String reqURL = "https://code-compiler.p.rapidapi.com/v2";
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");

            conn.setDoOutput(true);
            conn.setRequestProperty("content-type", "application/json");
            conn.setRequestProperty("X-RapidAPI-Key", rapidAPI_KEY);
            conn.setRequestProperty("X-RapidAPI-Host", rapidAPI_HOST);



        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        JSONObject jsonObject =  new JSONObject();
        jsonObject.put("LanguageChoice",language);
        jsonObject.put("Program",coteRequestDto.getCode());
        jsonObject.put("Input",coteRequestDto.getInput());


        HttpResponse<String> response = Unirest.post("https://code-compiler.p.rapidapi.com/v2")
                .header("content-type", "application/json")
                .header("X-RapidAPI-Key", rapidAPI_KEY)
                .header("X-RapidAPI-Host", rapidAPI_HOST)
                .body(jsonObject.toString())
                .asString();
        try {
            JSONParser parser = new JSONParser();
            JSONObject jsonObj = (JSONObject) parser.parse(response.getBody());
            if(jsonObj.get("Errors") != null){
                coteResultDto.setOutput(jsonObj.get("Errors").toString());
            } else if (jsonObj.get("Result") != null) {
                coteResultDto.setOutput(jsonObj.get("Result").toString());
            }
        }catch (ParseException e){
            e.printStackTrace();
        }
        System.out.println(response.getBody());

        return CoteResultDto.builder().build();
    }


}
