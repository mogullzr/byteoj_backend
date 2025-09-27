//package com.example.backend.controller;
//
//import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
//import com.example.backend.common.AccessLimit;
//import com.example.backend.common.BaseResponse;
//import com.example.backend.common.ErrorCode;
//import com.example.backend.common.ResultUtils;
//import com.example.backend.exception.BusinessException;
//import com.example.backend.mapper.ProblemAlgorithmBankMapper;
//import com.example.backend.mapper.ProblemAlgorithmTagsMapper;
//import com.example.backend.mapper.SubmissionsAlgorithmMapper;
//import com.example.backend.models.domain.algorithm.UserLastEnter;
//import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
//import com.example.backend.models.domain.judge.Judge;
//import com.example.backend.models.domain.user.User;
//import com.example.backend.models.request.JudgeRequest;
//import com.example.backend.models.request.math408.ProblemRequest;
//import com.example.backend.models.request.problem.AlgorithmQueryRequest;
//import com.example.backend.models.request.problem.ProblemAlgorithmRequest;
//import com.example.backend.models.request.problem.ProblemAlgorithmTestCaseRequest;
//import com.example.backend.models.vo.AliyunVodVo;
//import com.example.backend.models.vo.ProblemDailyVo;
//import com.example.backend.models.vo.competition.CompetitionProblemsVo;
//import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
//import com.example.backend.models.vo.problem.ProblemDailyNumVo;
//import com.example.backend.models.vo.problem.ProblemTagsVo;
//import com.example.backend.models.vo.problem.ProblemUserLastVo;
//import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
//import com.example.backend.service.algorithm.ProblemAlgorithmService;
//import com.example.backend.service.math408.ProblemsService;
//import com.example.backend.service.user.UserService;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.multipart.MultipartFile;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;
//import java.io.IOException;
//import java.io.UnsupportedEncodingException;
//import java.util.List;
//
//@RestController
//@RequestMapping("/problem")
//@Slf4j
//@Controller
//public class ProblemsController {
//    @Resource
//    private ProblemsService problemsService;
//
//    @Resource
//    private UserService userService;
//
//
//    @PostMapping("/admin/add")
//    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
//    private BaseResponse<Boolean> ProblemAdd(@RequestBody ProblemRequest problemRequest, HttpServletRequest httpServletRequest) {
//        boolean isAdmin = userService.isAdmin(httpServletRequest);
//
//        boolean result = problemsService.problemAdd(problemRequest, isAdmin);
//        return ResultUtils.success(result);
//    }
//}