package com.example.backend.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.problem.ProblemWrongBookAddRequest;
import com.example.backend.models.request.problem.ProblemWrongBookQueryRequest;
import com.example.backend.models.request.problem.ProblemWrongBookUpdateRequest;
import com.example.backend.models.vo.problem.ProblemWrongBookVo;
import com.example.backend.service.math408.ProblemWrongBookService;
import com.example.backend.service.user.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/problem/wrong-book")
public class ProblemWrongBookController {

    @Resource
    private ProblemWrongBookService problemWrongBookService;

    @Resource
    private UserService userService;

    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    @PostMapping("/list")
    private BaseResponse<Page<ProblemWrongBookVo>> listWrongBooks(@RequestBody(required = false) ProblemWrongBookQueryRequest queryRequest,
                                                                  HttpServletRequest request) {
        User loginUser = userService.getLoginUser(request);
        return ResultUtils.success(problemWrongBookService.listWrongBooks(loginUser.getUuid(), queryRequest));
    }

    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    @GetMapping("/detail")
    private BaseResponse<ProblemWrongBookVo> getWrongBookDetail(@Param("id") Long id,
                                                                HttpServletRequest request) {
        User loginUser = userService.getLoginUser(request);
        return ResultUtils.success(problemWrongBookService.getWrongBookDetail(loginUser.getUuid(), id));
    }

    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    @PostMapping("/random")
    private BaseResponse<ProblemWrongBookVo> randomWrongBook(@RequestBody(required = false) ProblemWrongBookQueryRequest queryRequest,
                                                             HttpServletRequest request) {
        User loginUser = userService.getLoginUser(request);
        return ResultUtils.success(problemWrongBookService.randomWrongBook(loginUser.getUuid(), queryRequest));
    }

    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    @PostMapping("/add")
    private BaseResponse<ProblemWrongBookVo> addWrongBook(@RequestBody ProblemWrongBookAddRequest addRequest,
                                                          HttpServletRequest request) {
        User loginUser = userService.getLoginUser(request);
        return ResultUtils.success(problemWrongBookService.addWrongBook(loginUser.getUuid(), addRequest));
    }

    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    @PostMapping("/mastery")
    private BaseResponse<Boolean> updateMasteryStatus(@RequestBody ProblemWrongBookUpdateRequest updateRequest,
                                                      HttpServletRequest request) {
        User loginUser = userService.getLoginUser(request);
        return ResultUtils.success(problemWrongBookService.updateMasteryStatus(
                loginUser.getUuid(),
                updateRequest == null ? null : updateRequest.getId(),
                updateRequest == null ? null : updateRequest.getMastery_status()));
    }

    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    @DeleteMapping("/delete")
    private BaseResponse<Boolean> deleteWrongBook(@Param("id") Long id,
                                                  HttpServletRequest request) {
        User loginUser = userService.getLoginUser(request);
        return ResultUtils.success(problemWrongBookService.deleteWrongBook(loginUser.getUuid(), id));
    }
}
