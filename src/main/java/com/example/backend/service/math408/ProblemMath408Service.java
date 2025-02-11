package com.example.backend.service.math408;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.math408.ProblemMath408Bank;
import com.example.backend.models.request.problem.ProblemMath408Request;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


public interface ProblemMath408Service extends IService<ProblemMath408Bank> {


    /**\
     * math题目搜索
     *
     * @param httpServletRequest 前端http请求
     * @return 数学类型题目
     */
    List<ProblemMath408BankVo> problemMath408SearchAll(Integer uuid, Integer status,HttpServletRequest httpServletRequest);


    /**
     * 分页查询题目
     *
     * @param uuid 用户id
     * @param status 题目类型
     * @param PageNum 页面大小
     * @return 脱敏的题目信息
     */
    List<ProblemMath408BankVo> problemMath408SearchByPage(Integer uuid, Integer status, Integer PageNum);
    /**
     * 根据标签获取题目信息
     *
     * @param tag_id 标签id
     * @param uuid 用户id
     * @param httpServletRequest 前端http请求
     * @return 题目信息列表
     */
    List<ProblemMath408BankVo> getProblemMath408TagsByTagId(Long tag_id, Integer uuid, HttpServletRequest httpServletRequest);

    /**
     * 返回问题对应信息
     *
     * @param problem_id 问题id
     * @param httpServletRequest http前端请求
     * @return 问题信息
     */
    ProblemMath408BankVo getProblemMath408TagsByProblemId(Integer problem_id, Integer uuid, HttpServletRequest httpServletRequest);

    /**
     * 根据难度查询题目
     *
     * @param difficulty 难度名称
     * @param uuid 用户id
     * @param httpServletRequest 前端的http请求
     * @return 题目信息列表
     */
    List<ProblemMath408BankVo> getProblemMath408ByDifficulty(String difficulty, Integer uuid, HttpServletRequest httpServletRequest);


    /**
     * 获取题目答案
     *
     * @param problem_id 问题id
     * @return 试题答案信息
     */
    String problemMath408GetProblemAnswer(Long problem_id);

    /**
     * 创建math408类型题目
     *
     * @param problemMath408Request 题目信息
     * @param httpServletRequest 前端http请求
     * @return  是否创建成功
     */
    Boolean problemAdd(ProblemMath408Request problemMath408Request, boolean isAdmin, Integer status, HttpServletRequest httpServletRequest);

    /**
     * 删除math408类型题目
     *
     * @param problem_id 题目id
     * @return 是否成功删除
     */
    Boolean problemDelete(Long problem_id, boolean isAdmin, HttpServletRequest httpServletRequest);

    Boolean problemModify(ProblemMath408Request problemMath408Request, boolean isAdmin, HttpServletRequest httpServletRequest);
}