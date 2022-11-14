package com.ssafy.developermaker.domain.aiinterview.application;

import com.ssafy.developermaker.domain.aiinterview.dto.AiInterviewQuestionDto;
import com.ssafy.developermaker.domain.aiinterview.entity.AiInterviewQuestion;
import com.ssafy.developermaker.domain.aiinterview.repository.AiInterviewQuestionRepository;
import kong.unirest.HttpResponse;
import kong.unirest.JsonNode;
import kong.unirest.Unirest;
import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.*;

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

    public boolean getIsFace(String url) {

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
        return true;
    }

    public boolean getIsVoice(String txt) {
        if (txt.contains("안녕하세요") && txt.contains("반갑습니다")) {
            return true;
        }
        return false;
    }

    public String getResult(String url) {
        String result = null;
        HttpResponse<JsonNode> response = post_request("https://api.luxand.cloud/photo/emotions",
                new HashMap<String, Object>() {{
                    put("photo", url);
                }});

        if (response.getStatus() != 200) {
            System.out.printf(response.getBody().getObject().getString("message"));
        }
//(response.getBody().toString())
        /*
        AiInterviewQuestion aiInterviewQuestion = aiInterviewQuestionRepository.findAiInterviewQuestionByNo(no).get();

        List<String> wordList = aiInterviewQuestion.toDto().getKeyword();

        int cnt = 0;

        Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
        komoran.setUserDic("C:\\Users\\SSAFY\\Documents\\GitHub\\DevMaker-back\\backend\\src\\main\\java\\com\\ssafy\\developermaker\\domain\\aiinterview\\data\\user.dic");
        KomoranResult analyzeResultList = komoran.analyze(aiInterviewText);

        Map<String, Integer> map = getCount(analyzeResultList.getMorphesByTags("NNP"));
        Iterator<String> it = map.keySet().iterator();
        while (it.hasNext()){
            if(map.get(it.next()) > 0) cnt++;
        }
        for (String s : wordList) {
            System.out.println(s);
            System.out.println(map.getOrDefault(s, 0));
            if (map.getOrDefault(s, 0) > 0) {
                cnt++;
            }
        }

        float f = cnt / N;
        System.out.println(f);
*/
        return result;
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
