package com.ssafy.developermaker.domain.codingtest.application;

import com.ssafy.developermaker.domain.codingtest.dto.CoteDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteRequestDto;
import com.ssafy.developermaker.domain.codingtest.entity.Cote;
import com.ssafy.developermaker.domain.codingtest.entity.UserCote;
import com.ssafy.developermaker.domain.codingtest.repository.CoteRepository;
import com.ssafy.developermaker.domain.codingtest.repository.UserCoteRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class CoteService {

    private final UserRepository userRepository;
    private final UserCoteRepository userCoteRepository;
    private final CoteRepository coteRepository;
    @Value("${properties.file.JDoodle-ID}")
    private String clientId;
    @Value("${properties.file.JDoodle-secret}")
    private String clientSecret;

    public List<CoteDto> getList(String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        List<Cote> all = coteRepository.findAll();
        List<CoteDto> coteDtos = new ArrayList<>();

        for (Cote cote : all) {
            Optional<UserCote> userCoteOpt = userCoteRepository.findByUserAndCote(user, cote);
            if (userCoteOpt.isPresent()) {
                boolean correct = userCoteOpt.get().getCorrect();
                coteDtos.add(cote.toDto(correct));
            }
        }
        return coteDtos;
    }

    public String submitCote(String email, Long coteId, CoteRequestDto coteRequestDto) {
        String response = "";
        Cote cote = coteRepository.findById(coteId).get();
        User user = userRepository.findByEmail(email).get();

        UserCote userCote;
        Optional<UserCote> userCoteOpt = userCoteRepository.findByUserAndCote(user, cote);

        // 정답 여부 API 통해 연산.
        boolean correct = false;

        String script = coteRequestDto.getCode();
        String language = coteRequestDto.getLanguage();
        String versionIndex = "0";
        try {
            URL url = new URL("https://api.jdoodle.com/v1/execute");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json");

            String input = "{\"clientId\": \"" + clientId + "\",\"clientSecret\":\"" + clientSecret + "\",\"script\":\"" + script +
                    "\",\"language\":\"" + language + "\",\"versionIndex\":\"" + versionIndex + "\"} ";

            System.out.println(input);

            OutputStream outputStream = connection.getOutputStream();
            outputStream.write(input.getBytes());
            outputStream.flush();

            if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
                throw new RuntimeException("Please check your inputs : HTTP error code : " + connection.getResponseCode());
            }

            BufferedReader bufferedReader;
            bufferedReader = new BufferedReader(new InputStreamReader(
                    (connection.getInputStream())));

            String output;
            System.out.println("Output from JDoodle .... \n");
            while ((output = bufferedReader.readLine()) != null) {
                System.out.println(output);
            }

            connection.disconnect();

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


        if (userCoteOpt.isPresent()) { // 푼 기록이 있을 때.
            userCote = userCoteOpt.get();
            if (correct) {
            }
        } else {
            userCote = new UserCote();
        }


        return response;
    }
}
