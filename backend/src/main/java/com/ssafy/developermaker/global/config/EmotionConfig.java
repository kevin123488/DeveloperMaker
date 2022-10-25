package com.ssafy.developermaker.global.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;

@Configuration
@PropertySources({
        @PropertySource("classpath:properties/env.properties") // env.properties 파일 소스 등록
})
public class EmotionConfig {
    @Value("${emo.token}")
    private static String emotionToken;
    public static String getEmotionToken(){
        return emotionToken;
    }
}
