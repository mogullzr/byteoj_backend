package com.example.backend.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.UsagePlansMapper;
import com.example.backend.models.domain.usage.UsagePlans;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.math408.ProblemRequest;
import com.example.backend.models.request.problem.ProblemExamEditRequest;
import com.example.backend.models.vo.problem.ProblemExamVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.models.vo.problem.ProblemSimilarityVo;
import com.example.backend.service.math408.ProblemMath408BankService;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/usage")
@Slf4j
public class usageController {
    @Resource
    private UsagePlansMapper usagePlansMapper;

    @Resource
    private UserService userService;

    @AccessLimit(seconds = 1, maxCount = 5, needLogin = true)
    @GetMapping("/maxCount/get")
    private BaseResponse<Integer> UsageMaxCountGet(HttpServletRequest request) {

        QueryWrapper<UsagePlans> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("feature_code", "SIMILAR");
        UsagePlans usagePlans = usagePlansMapper.selectOne(queryWrapper);
        if (usagePlans == null) {
            return ResultUtils.success(0);
        }
        return ResultUtils.success(usagePlans.getMax_count());
    }
}