package com.ssafy.developermaker.domain.codingtest.application;

import com.ssafy.developermaker.domain.codingtest.dto.CoteListRequestDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteListResponseDto;
import com.ssafy.developermaker.domain.codingtest.dto.CoteRequestDto;
import com.ssafy.developermaker.domain.codingtest.entity.Cote;
import com.ssafy.developermaker.domain.codingtest.repository.CoteRepository;
import com.ssafy.developermaker.domain.codingtest.repository.UserCoteRepository;
import com.ssafy.developermaker.domain.user.entity.User;
import com.ssafy.developermaker.domain.user.exception.UserNotFoundException;
import com.ssafy.developermaker.domain.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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
//    @Value("${properties.file.JDoodle-ID}")
//    private String clientId;
//    @Value("${properties.file.JDoodle-secret}")
//    private String clientSecret;

    public List<CoteListResponseDto> getList(String email, CoteListRequestDto coteListRequestDto) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);

        PageRequest pageRequest = PageRequest.of(coteListRequestDto.getOffset(), coteListRequestDto.getLimit());
        Page<Cote> page = coteRepository.findAll(pageRequest);

        return page.stream().map(cote ->
                new CoteListResponseDto(cote.getCoteId(), cote.getTitle(), cote.getProblem(),
                        userCoteRepository.findByUserAndCote(user,cote).isPresent()
                ? userCoteRepository.findByUserAndCote(user,cote).get().getCorrect() : 0))
                .collect(Collectors.toList());
    }

    public String submitCote(String email, Long coteId, CoteRequestDto coteRequestDto) {
        String response = "";
//        Cote cote = coteRepository.findById(coteId).get();
//        User user = userRepository.findByEmail(email).get();
//
//        UserCote userCote;
//        Optional<UserCote> userCoteOpt = userCoteRepository.findByUserAndCote(user, cote);
//
//        // 정답 여부 API 통해 연산.
//        boolean correct = false;
//
//        String script = coteRequestDto.getCode();
//        String language = coteRequestDto.getLanguage();
//        String versionIndex = "0";
//        try {
//            URL url = new URL("https://api.jdoodle.com/v1/execute");
//            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//            connection.setDoOutput(true);
//            connection.setRequestMethod("POST");
//            connection.setRequestProperty("Content-Type", "application/json");
//
//            String input = "{\"clientId\": \"" + clientId + "\",\"clientSecret\":\"" + clientSecret + "\",\"script\":\"" + script +
//                    "\",\"language\":\"" + language + "\",\"versionIndex\":\"" + versionIndex + "\"} ";
//
//            System.out.println(input);
//
//            OutputStream outputStream = connection.getOutputStream();
//            outputStream.write(input.getBytes());
//            outputStream.flush();
//
//            if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
//                throw new RuntimeException("Please check your inputs : HTTP error code : " + connection.getResponseCode());
//            }
//
//            BufferedReader bufferedReader;
//            bufferedReader = new BufferedReader(new InputStreamReader(
//                    (connection.getInputStream())));
//
//            String output;
//            System.out.println("Output from JDoodle .... \n");
//            while ((output = bufferedReader.readLine()) != null) {
//                System.out.println(output);
//            }
//
//            connection.disconnect();
//
//        } catch (MalformedURLException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//
//        if (userCoteOpt.isPresent()) { // 푼 기록이 있을 때.
//            userCote = userCoteOpt.get();
//            if (correct) {
//            }
//        } else {
//            userCote = new UserCote();
//        }


        return response;
    }
}
