package com.example.backend.service.ai;

import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.vo.problem.DeepSeekBalanceVo;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClientResponseException;

import javax.annotation.Resource;
import java.time.Duration;

/** Server-side proxy for DeepSeek account APIs. The API key never reaches the browser. */
@Service
public class DeepSeekAccountService {
    private static final Duration BALANCE_TIMEOUT = Duration.ofSeconds(15);

    @Value("${ai.api.deepseek-grading.key:${ai.api.v3-1.key:}}")
    private String apiKey;

    @Value("${ai.api.deepseek-grading.balance-url:https://api.deepseek.com/user/balance}")
    private String balanceUrl;

    @Resource
    private ObjectMapper objectMapper;

    public DeepSeekBalanceVo getBalance() {
        if (apiKey == null || apiKey.trim().isEmpty()) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "DeepSeek API key 未配置");
        }
        try {
            JsonNode body = WebClient.builder()
                    .baseUrl(balanceUrl)
                    .defaultHeader("Authorization", "Bearer " + apiKey.trim())
                    .defaultHeader("Accept", MediaType.APPLICATION_JSON_VALUE)
                    .build()
                    .get()
                    .retrieve()
                    .bodyToMono(JsonNode.class)
                    .block(BALANCE_TIMEOUT);
            if (body == null || body.isNull()) {
                throw new BusinessException(ErrorCode.SYSTEM_ERROR, "DeepSeek 余额接口返回为空");
            }
            return objectMapper.treeToValue(body, DeepSeekBalanceVo.class);
        } catch (BusinessException ex) {
            throw ex;
        } catch (WebClientResponseException ex) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR,
                    "DeepSeek 余额查询失败：HTTP " + ex.getStatusCode().value());
        } catch (Exception ex) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "DeepSeek 余额查询失败：" + ex.getMessage());
        }
    }
}
