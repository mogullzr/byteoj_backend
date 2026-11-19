package com.example.backend.service.ai;

import com.example.backend.models.request.AI.DeepSeekMessage;
import com.example.backend.models.request.AI.DeepSeekRequest;
import com.example.backend.registry.DeepSeekChatPromptRegistry;
import com.example.backend.service.ai.AiSourceService.Connection;
import com.example.backend.service.ai.AiSourceService.Feature;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.net.httpserver.HttpServer;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.test.util.ReflectionTestUtils;

import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.*;
import java.util.concurrent.CopyOnWriteArrayList;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

class AiChatSourceTest {
    private final ObjectMapper mapper = new ObjectMapper();
    private final List<JsonNode> requests = new CopyOnWriteArrayList<>();
    private final List<String> authorization = new CopyOnWriteArrayList<>();
    private final AiSourceService sources = mock(AiSourceService.class);
    private final DeepSeekService service = new DeepSeekService();
    private HttpServer server;

    @BeforeEach
    void setUp() throws Exception {
        server = HttpServer.create(new InetSocketAddress("127.0.0.1", 0), 0);
        server.createContext("/chat/completions", exchange -> {
            try {
                JsonNode request = mapper.readTree(exchange.getRequestBody());
                requests.add(request);
                authorization.add(exchange.getRequestHeaders().getFirst("Authorization"));
                String body;
                if (request.path("stream").asBoolean()) {
                    exchange.getResponseHeaders().set("Content-Type", "text/event-stream");
                    body = "data: {\"choices\":[{\"delta\":{\"reasoning_content\":\"分析\"}}]}\n\n"
                            + "data: {\"choices\":[{\"delta\":{\"content\":\"回答\"}}]}\n\n"
                            + "data: [DONE]\n\n";
                } else {
                    exchange.getResponseHeaders().set("Content-Type", "application/json");
                    body = "{\"choices\":[{\"message\":{\"content\":\"回答\"}}]}";
                }
                byte[] bytes = body.getBytes(StandardCharsets.UTF_8);
                exchange.sendResponseHeaders(200, bytes.length);
                exchange.getResponseBody().write(bytes);
            } finally {
                exchange.close();
            }
        });
        server.start();
        String url = "http://127.0.0.1:" + server.getAddress().getPort() + "/chat/completions";
        when(sources.legacyId(anyString())).thenAnswer(call -> call.getArgument(0));
        when(sources.resolve(any(), eq("sf:test"), anyBoolean())).thenReturn(
                new Connection("sf:test", "test/model", url, "test-only-key", true, true, false, false));
        ReflectionTestUtils.setField(service, "aiSources", sources);
        ReflectionTestUtils.setField(service, "objectMapper", mapper);
        DeepSeekChatPromptRegistry prompts = mock(DeepSeekChatPromptRegistry.class);
        when(prompts.getAIChatMode(0)).thenReturn(new AIChatCommonMode());
        when(prompts.getAIChatMode(1)).thenReturn(new AIChatCommonMode());
        ReflectionTestUtils.setField(service, "deepSeekChatPromptRegistry", prompts);
    }

    @AfterEach
    void close() {
        if (server != null) server.stop(0);
    }

    @Test
    void streamUsesConfiguredModelAndPreservesOrderingThroughDone() {
        DeepSeekRequest request = request(0);
        var messages = service.deepSeekAsker(request, 42L).collectList().block(Duration.ofSeconds(10));
        assertNotNull(messages);
        assertEquals(List.of("分析", "回答", "[DONE]"), messages.stream().map(m -> m.getContent()).toList());
        assertEquals("test/model", requests.get(0).path("model").asText());
        assertEquals("Bearer test-only-key", authorization.get(0));
        verify(sources).resolve(Feature.CHAT, "sf:test", false);
    }

    @Test
    void nonStreamAndStudyPlanShareSourceSelectionAndKeepPrompt() {
        DeepSeekRequest request = request(2);
        request.setCode("考研数学");
        assertEquals("回答", service.deepSeekAskerNonStream(request, 42L).block(Duration.ofSeconds(10)));
        assertFalse(requests.get(0).path("stream").asBoolean());
        assertEquals("test/model", requests.get(0).path("model").asText());
        assertTrue(requests.get(0).path("messages").toString().contains("考研数学"));
        assertTrue(requests.get(0).path("messages").toString().contains("推荐学习路径报告"));
        verify(sources).resolve(Feature.STUDY_PLAN, "sf:test", false);
    }

    @Test
    void imagesAreValidatedAgainstSourceCapabilitiesBeforeSending() {
        DeepSeekRequest request = request(1);
        request.setMessageList(List.of(new DeepSeekMessage("user",
                List.of(DeepSeekMessage.ContentItem.ofImageUrl("https://example.test/answer.png")))));
        service.deepSeekAskerNonStream(request, 42L).block(Duration.ofSeconds(10));
        verify(sources).resolve(Feature.PROBLEM_CHAT, "sf:test", true);
        assertTrue(requests.get(0).path("messages").toString().contains("https://example.test/answer.png"));
    }

    private DeepSeekRequest request(int status) {
        DeepSeekRequest request = new DeepSeekRequest();
        request.setModel("sf:test");
        request.setStatus(status);
        request.setMessageList(List.of(new DeepSeekMessage("user", "问题")));
        return request;
    }
}
