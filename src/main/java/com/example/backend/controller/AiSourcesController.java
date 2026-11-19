package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.domain.user.User;
import com.example.backend.service.ai.AiSourceService;
import com.example.backend.service.ai.AiSourceService.Feature;
import com.example.backend.service.user.UserService;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;

@RestController
@RequestMapping("/ai/sources")
public class AiSourcesController {
    private final AiSourceService sources;
    private final UserService users;

    public AiSourcesController(AiSourceService sources, UserService users) {
        this.sources = sources;
        this.users = users;
    }

    @GetMapping("/options")
    public BaseResponse<List<AiSourceService.Option>> options(@RequestParam Feature feature,
                                                               HttpServletRequest request) {
        requireUser(request);
        return ResultUtils.success(sources.options(feature).stream().filter(AiSourceService.Option::configured).toList());
    }

    @GetMapping("/admin")
    public BaseResponse<AiSourceService.Settings> settings(HttpServletRequest request, HttpServletResponse response) {
        requireAdmin(request, false);
        response.setHeader("Cache-Control", "no-store");
        return ResultUtils.success(sources.settings());
    }

    @PutMapping(value = "/admin/keys/{id}", consumes = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public BaseResponse<Boolean> rotateKey(@PathVariable String id, HttpServletRequest request) {
        long operator = requireAdmin(request, true);
        byte[] key;
        try {
            key = request.getInputStream().readNBytes(513);
        } catch (IOException e) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "无法读取 API 密钥");
        }
        try {
            if (key.length > 512) throw new BusinessException(ErrorCode.PARAMS_ERROR, "API 密钥过长");
            sources.rotateKey(id, new String(key, StandardCharsets.UTF_8).trim(), operator);
            return ResultUtils.success(true);
        } finally {
            java.util.Arrays.fill(key, (byte) 0);
        }
    }

    @PutMapping("/admin/siliconflow/{alias}")
    public BaseResponse<Boolean> saveModel(@PathVariable String alias, @RequestBody AiSourceService.ModelConfig model,
                                           HttpServletRequest request) {
        sources.saveModel(alias, model, requireAdmin(request, true));
        return ResultUtils.success(true);
    }

    @PutMapping("/admin/defaults/{feature}")
    public BaseResponse<Boolean> saveDefault(@PathVariable Feature feature, @RequestBody DefaultChoice choice,
                                             HttpServletRequest request) {
        sources.saveDefault(feature, choice.id(), requireAdmin(request, true));
        return ResultUtils.success(true);
    }

    private User requireUser(HttpServletRequest request) {
        User user = users.getLoginUser(request);
        if (user == null) throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        return user;
    }

    private long requireAdmin(HttpServletRequest request, boolean write) {
        String origin = request.getHeader("Origin");
        String site = request.getHeader("Sec-Fetch-Site");
        // The admin app uses a same-origin proxy. The project's general CORS policy is broad.
        boolean crossOrigin = (origin != null || site != null) && !"same-origin".equals(site);
        boolean missingWriteHeader = write && !"1".equals(request.getHeader("X-ByteOJ-AI-Admin"));
        if (crossOrigin || missingWriteHeader) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR);
        }
        User user = requireUser(request);
        if (!users.isAdmin(user)) throw new BusinessException(ErrorCode.NOT_AUTH_ERROR);
        return user.getUuid();
    }

    public record DefaultChoice(String id) {}
}
