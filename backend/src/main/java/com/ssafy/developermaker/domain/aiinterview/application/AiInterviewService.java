package com.ssafy.developermaker.domain.aiinterview.application;

import com.ssafy.developermaker.domain.aiinterview.dto.AiInterviewQuestionDto;
import com.ssafy.developermaker.domain.aiinterview.dto.AiInterviewRequestDto;
import com.ssafy.developermaker.domain.aiinterview.dto.AiInterviewResultDto;
import com.ssafy.developermaker.domain.aiinterview.dto.ImageAnalyzeResult;
import com.ssafy.developermaker.domain.aiinterview.entity.AiInterviewQuestion;
import com.ssafy.developermaker.domain.aiinterview.repository.AiInterviewQuestionRepository;
import kong.unirest.HttpResponse;
import kong.unirest.JsonNode;
import kong.unirest.Unirest;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class AiInterviewService {
    private final AiInterviewQuestionRepository aiInterviewQuestionRepository;
    @Value("${properties.file.luxand-token}")
    private String TOKEN;

    private HttpResponse<JsonNode> post_request(String url, Map<String, Object> fields) {
        return Unirest.post(url)
                .header("token", TOKEN)
                .fields(fields)
                .asJson();
    }

    public AiInterviewQuestionDto getQuestion(String subject) {
        AiInterviewQuestionDto questionDto = aiInterviewQuestionRepository.findBySubjectOrderByRand(subject).get().toDto();
        System.out.println(questionDto);
        return questionDto;
    }

    public boolean getIsFace(String url) throws ParseException {

        HttpResponse<JsonNode> response = post_request("https://api.luxand.cloud/photo/emotions",
                new HashMap<String, Object>() {{
                    put("photo", url);
                }});

        if (response.getStatus() != 200) {
            System.out.printf(response.getBody().getObject().getString("message"));
        }
        if (response.getBody().getObject().toString().equals("{\"status\":\"success\",\"faces\":[]}")) {
            return false;
        }
        System.out.println(response.getBody().getObject().toString());
        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObject = (JSONObject) jsonParser.parse(response.getBody().getObject().getJSONArray("faces").get(0).toString());

        jsonObject = (JSONObject) jsonObject.get("emotions");
        System.out.println(jsonObject.get("happiness"));

//        JsonNode jsonObject = response.getBody().getObject().getJSONArray("faces").get(0).toString();
//        System.out.println(jsonObject);
        return true;
    }

    public boolean getIsVoice(String txt) {
        if (txt.contains("안녕하세요") && txt.contains("반갑습니다")) {
            return true;
        }
        return false;
    }

    public AiInterviewResultDto getResult(Long id, String url, AiInterviewRequestDto aiInterviewRequestDto) throws ParseException {
        AiInterviewResultDto aiInterviewResultDto = AiInterviewResultDto.builder().build();
        HttpResponse<JsonNode> response = post_request("https://api.luxand.cloud/photo/emotions",
                new HashMap<String, Object>() {{
                    put("photo", url);
                }});

        if (response.getStatus() != 200) {
            System.out.printf(response.getBody().getObject().getString("message"));
        }
        ImageAnalyzeResult imageAnalyzeResult = ImageAnalyzeResult.builder().anger(0f).contempt(0f).disgust(0f).fear(0f).happiness(0f).neutral(0f).sadness(0f).surprise(0f).build();
//(response.getBody().toString())
        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObject = (JSONObject) jsonParser.parse(response.getBody().getObject().getJSONArray("faces").get(0).toString());
        Float imageScore = 0f;
        jsonObject = (JSONObject) jsonObject.get("emotions");
        if (jsonObject.get("happiness") != null) {
            imageAnalyzeResult.setHappiness(Float.valueOf(jsonObject.get("happiness").toString()));
            imageScore += Float.valueOf(jsonObject.get("happiness").toString());
        }
        if (jsonObject.get("neutral") != null) {
            imageAnalyzeResult.setNeutral(Float.valueOf(jsonObject.get("neutral").toString()));
            imageScore += Float.valueOf(jsonObject.get("neutral").toString());
        }
        if (jsonObject.get("surprise") != null) {
            imageAnalyzeResult.setSurprise(Float.valueOf(jsonObject.get("surprise").toString()));
            imageScore += Float.valueOf(jsonObject.get("surprise").toString());
        }
        if (jsonObject.get("sadness") != null) {
            imageAnalyzeResult.setSadness(Float.valueOf(jsonObject.get("sadness").toString()));
        }
        if (jsonObject.get("anger") != null) {
            imageAnalyzeResult.setAnger(Float.valueOf(jsonObject.get("anger").toString()));
        }
        if (jsonObject.get("contempt") != null) {
            imageAnalyzeResult.setContempt(Float.valueOf(jsonObject.get("contempt").toString()));
        }
        if (jsonObject.get("fear") != null) {
            imageAnalyzeResult.setFear(Float.valueOf(jsonObject.get("fear").toString()));
        }
        if (jsonObject.get("disgust") != null) {
            imageAnalyzeResult.setDisgust(Float.valueOf(jsonObject.get("disgust").toString()));
        }
        System.out.println(imageAnalyzeResult.toString());
        aiInterviewResultDto.setImageAnalyzeResult(imageAnalyzeResult);
        aiInterviewResultDto.setImageScore(imageScore * 100f);


        AiInterviewQuestion aiInterviewQuestion = aiInterviewQuestionRepository.findAiInterviewQuestionByAiqId(id).get();
        AiInterviewQuestionDto aiInterviewQuestionDto = aiInterviewQuestion.toDto();
        List<String> wordList = aiInterviewQuestionDto.getKeyword();
        List<String> wordDetectList = aiInterviewQuestionDto.getKeywordDetect();
        Integer demendCnt = aiInterviewQuestionDto.getDemendCnt();
        int cnt = 0;
        List<String> list = new ArrayList<>();
        for (int i = 0; i < wordDetectList.size(); i++) {
            if (aiInterviewRequestDto.getInterviewText().contains(wordDetectList.get(i))) {
                cnt++;
                list.add(wordList.get(i));
            }
        }

        aiInterviewResultDto.setAnswerScore((float) cnt / demendCnt * 100 < 100? 100 : (float) cnt / demendCnt * 100);
        aiInterviewResultDto.setTotalScore(aiInterviewResultDto.getAnswerScore() * aiInterviewResultDto.getImageScore() / 100f);
        aiInterviewResultDto.setPass(aiInterviewResultDto.getTotalScore() > 60f ? true : false);
        aiInterviewResultDto.setDemandKeywordCnt(demendCnt);
        aiInterviewResultDto.setAnswerKeyword(list);

        return aiInterviewResultDto;
    }

    public Map<String, Integer> getCount(List<String> wordList) {
        Map<String, Integer> map = new HashMap<>();

        for (String s : wordList) {
            System.out.println(s + "\t함수 안");
            int i = map.getOrDefault(s, 0);
            map.put(s, i + 1);
        }

        return map;
    }

}
