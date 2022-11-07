package com.ssafy.developermaker.global.util;

import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class RedisUtil {
    private final StringRedisTemplate redisTemplate;
    // key를 통해 value 리턴
    public String getData(String key){
        ValueOperations<String, String> valueOperations = redisTemplate.opsForValue();
        return valueOperations.get(key);
    }
    // 데이터 저장
    public void setData(String key, String value){
        ValueOperations<String,String> valueOperations = redisTemplate.opsForValue();
        valueOperations.set(key, value);
    }
    // 유효 기간 설정
    public void setDataExpire(String key, String value, long duration){
        ValueOperations<String, String> valueOperations = redisTemplate.opsForValue();
        Duration expireDuration = Duration.ofSeconds(duration);
        valueOperations.set(key, value, expireDuration);
    }
    // key를 통해 value 삭제
    public void deleteData(String key){
        redisTemplate.delete(key);
    }

    public List<String> getList(String key) {
        ListOperations<String, String> valueOperations = redisTemplate.opsForList();
        return valueOperations.range(key, 0, valueOperations.size(key));
    }

    public void setBlackList(String key, String value) {
        ListOperations<String, String> valueOperations = redisTemplate.opsForList();
        valueOperations.leftPush(key,value);
    }

    public void print(){
        Set<byte[]> keys = redisTemplate.getConnectionFactory().getConnection().keys("*".getBytes());

        Iterator<byte[]> it = keys.iterator();

        while(it.hasNext()){
            byte[] data = (byte[])it.next();
            System.out.println(new String(data, 0, data.length));
        }
    }
}
