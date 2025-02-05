package com.example.backend.service.algorithm;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.algorithm.UserLastEnter;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.request.problem.ProblemAlgorithmRequest;
import com.example.backend.models.request.problem.ProblemAlgorithmTestCaseRequest;
import com.example.backend.models.vo.competition.CompetitionProblemsVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemDailyNumVo;
import com.example.backend.models.vo.problem.ProblemTagsVo;
import com.example.backend.models.vo.problem.ProblemUserLastVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * @author Mogullzr
 * @description 针对表【problem_algorithm_bank(algorithm题目基本信息表)】的数据库操作Service
 * @createDate 2024-07-14 12:58:13
 */
public interface ProblemAlgorithmService extends IService<ProblemAlgorithmBank> {


    /**
     * 多条件搜索
     *
     * @param algorithmQueryRequest 算法搜索请求框
     * @param uuid 用户ID
     * @return
     */
    List<ProblemAlgorithmBankVo> ListAlgorithmVoByPage(AlgorithmQueryRequest algorithmQueryRequest, Long uuid);

    /**
     * 分页查询记录
     *
     * @param uuid 用户id
     * @param pageNum 面数
     * @return 当前用户所有的提交列表
     */
    List<SubmissionsAlgorithmRecordsVo> problemAlgorithmRecordsAllByUuidByPage(Long uuid, Integer pageNum);

    /**
     * 根据submission_id搜索
     *
     * @param submission_id 提交记录
     * @param uuid 用户id
     * @param competition_id 竞赛ID
     * @return 该记录的一些信息
     */
    SubmissionsAlgorithmRecordsVo problemAlgorithmRecordByRecordId(Long submission_id, boolean isAdmin, Long uuid, Long competition_id);


    /**
     * 获取所有标签类型
     *
     * @param uuid 用户id
     * @return 所有的标签信息
     */
    List<String> problemAlgorithmGetTags(Long uuid);


    /**
     * 获取某道题目信息
     *
     * @param problem_id 题目ID
     * @param httpServletRequest 前端的http请求
     * @return 题目信息
     */
    ProblemAlgorithmBankVo problemSearchByProblemId(Integer problem_id, HttpServletRequest httpServletRequest);

    /**
     * 获取每日刷题信息
     *
     * @param uuid 用户id
     * @return 每日刷题信息表
     */
    List<ProblemDailyNumVo> getProblemDailyNum(Long uuid);

    /**
     * 通过 uuid 和 problem_id 搜索对应 problem_id 的题目
     *
     * @param uuid 用户id
     * @return 搜索到的所有记录
     */
    List<SubmissionsAlgorithmRecordsVo> problemRecordsByUuidAndProblemIdByPage(Long problem_id, Long uuid, Integer pageNum);
    /**
     * 对调试信息进行处理
     *
     * @param uuid 用户ID
     * @param judgeRequest 调试后的信息
     * @return 是否存储成功
     */
    Boolean problemAlgorithmRecordAdd(Long uuid, JudgeRequest judgeRequest);

    /**
     * 代码评测返回信息
     *
     * @param judgeRequest 调试信息
     * @return 报错信息
     */
    List<Judge> problemAlgorithmJudge(JudgeRequest judgeRequest);

    /**
     * 提交代码产生记录
     *
     * @param uuid 用户id
     * @param judgeRequest 调试信息
     * @return 测试记录
     */
    Judge problemAlgorithmSubmit(JudgeRequest judgeRequest, Long uuid);


}