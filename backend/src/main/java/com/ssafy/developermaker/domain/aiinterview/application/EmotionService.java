package com.ssafy.developermaker.domain.aiinterview.application;

import kong.unirest.HttpResponse;
import kong.unirest.JsonNode;
import kong.unirest.Unirest;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class EmotionService {
    @Value("${properties.file.luxand-token}") private String TOKEN;
    private HttpResponse<JsonNode> post_request(String url, Map<String, Object> fields) {
        return Unirest.post(url)
                .header("token", TOKEN)
                .fields(fields)
                .asJson();
    }
    public String getResult(String url){
        HttpResponse<JsonNode> response = post_request("https://api.luxand.cloud/photo/emotions",
                new HashMap<String, Object>() {{ put("photo", url); }});

        if (response.getStatus() != 200){
            System.out.printf(response.getBody().getObject().getString("message"));
            System.exit(1);
        }

        return (response.getBody().toString());
    }
}
