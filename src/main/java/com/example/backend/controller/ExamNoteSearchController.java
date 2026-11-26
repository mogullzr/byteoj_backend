package com.example.backend.controller;

import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.models.vo.problem.ExamNoteSearchPage;
import com.example.backend.service.exam.ExamNoteSearchService;
import com.example.backend.service.user.UserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/problem/other/exam")
public class ExamNoteSearchController {
    private final UserService users;
    private final ExamNoteSearchService notes;

    public ExamNoteSearchController(UserService users, ExamNoteSearchService notes) {
        this.users = users;
        this.notes = notes;
    }

    // Use the existing rate limiter and enforce the logged-in owner here.
    @AccessLimit(seconds = 1, maxCount = 5, needLogin = false)
    @GetMapping("/annotations/search")
    public BaseResponse<ExamNoteSearchPage> search(@RequestParam(value = "keyword", defaultValue = "") String keyword,
                                                  @RequestParam(value = "pageNum", defaultValue = "1") int pageNum,
                                                  HttpServletRequest request, HttpServletResponse response) {
        var user = users.getLoginUser(request);
        if (user == null) throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        response.setHeader("Cache-Control", "no-store");
        return ResultUtils.success(notes.search(user.getUuid(), keyword, pageNum));
    }
}
