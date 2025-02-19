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
     * 分页查询记录
     *
     * @param uuid 用户id
     * @param PageNum 面数
     * @return 当前用户所有的提交列表
     */
    List<SubmissionsAlgorithmRecordsVo> problemAlgorithmRecordsAllByUuidByPage(Long uuid, Long PageNum);

    /**
     * 分页搜索算法题目列表
     *
     * @param algorithmQueryRequest 搜索请求
     * @param uuid 用户ID
     * @param isAdmin 谁否为管理员
     * @return 算法题目列表
     */
    List<ProblemAlgorithmBankVo> ListAlgorithmVoByPage(AlgorithmQueryRequest algorithmQueryRequest, Long uuid, boolean isAdmin);

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

    List<SubmissionsAlgorithmRecordsVo>  problemRecordsByUuidAndProblemIdByPage(Long problem_id, Long uuid, Long PageNum);

    /**
     * 搜索所有标签及其类型
     *
     * @return 标签plus分类列表
     */
    List<ProblemTagsVo> problemAlgorithmGetTagsPlusCategory();

    /**
     * 获取某道题目信息
     *
     * @param problem_id 题目ID
     * @param httpServletRequest 前端的http请求
     * @return 题目信息
     */
    ProblemAlgorithmBankVo problemSearchByProblemId(Integer problem_id, HttpServletRequest httpServletRequest);


    /**
     * 竞赛搜索到题目信息
     *
     * @param competition_id 竞赛ID
     * @param uuid 用户ID
     * @return 题目信息
     */
    List<CompetitionProblemsVo> competitionSearchProblems(Long competition_id, Long uuid);
    /**
     * 搜索竞赛对应单个题目信息
     *
     * @param competition_id 问题竞赛
     * @param index 索引编号
     * @param uuid 用户id
     * @return 题目信息
     */
    ProblemAlgorithmBankVo competitionSearchProblem(Long competition_id, String index, Long uuid);

    /**
     * 获取每日刷题信息
     *
     * @param uuid 用户id
     * @return 每日刷题信息表
     */
    List<ProblemDailyNumVo> getProblemDailyNum(Long uuid);
    /**
     * 根据难度搜索题目数量
     *
     * @param difficulty 难度
     * @param uuid 用户id
     * @return 难度对应题目用户通过数量
     */
    Long problemSearchByDifficultyAndUuid(String difficulty, Long uuid);
    /**
     * 管理员创建题目
     *
     * @param problemAlgorithmRequest 前端发送的题目信息
     * @param isAdmin 是否为管理员
     * @param uuid 用户id
     * @param username 用户名
     * @param httpServletRequest 前端http请求
     * @return 是否成功创建
     */
    Boolean problemAdd(ProblemAlgorithmRequest problemAlgorithmRequest, boolean isAdmin, Long uuid, String username, Integer status, HttpServletRequest httpServletRequest);

    /**
     *  管理员删除题目
     *
     * @param problem_id 问题id
     * @param isAdmin 是否为管理员
     * @param httpServletRequest 前端http请求
     * @return 是否删除成功
     */
    Boolean problemDelete(Long problem_id, boolean isAdmin, HttpServletRequest httpServletRequest);

    /**
     * 管理员修改题目
     *
     * @param problemAlgorithmRequest 修改后题目信息
     * @param httpServletRequest 前端http请求
     * @return 是否修改成功
     */
    Boolean problemModify(ProblemAlgorithmRequest problemAlgorithmRequest, boolean isAdmin, HttpServletRequest httpServletRequest);

    /**
     * 是否添加成功
     *
     * @param problemAlgorithmTestCaseRequestList 评测信息列表
     * @param isAdmin 是否为管理员
     * @param problem_id 问题ID
     * @return 是否添加成功
     */
    Boolean problemTestCaseAdd(List<ProblemAlgorithmTestCaseRequest> problemAlgorithmTestCaseRequestList, boolean isAdmin, Long problem_id);

    /**
     * 是否添加成功
     *
     *
     * @param isAdmin 是否为管理员
     * @param problem_id 问题ID
     * @return 是否添加成功
     */
    Boolean problemTestCasesFileAdd(MultipartFile TestFile, boolean isAdmin, Long problem_id) throws IOException;

    /**
     * 获取题目的所有测试样例
     *
     * @param problem_id 问题ID
     * @param isAdmin 是否为管理员
     * @return 所有测试样例信息
     */
    List<ProblemAlgorithmTestCaseRequest> problemTestCaseGet(Long problem_id, boolean isAdmin);

    /**
     * 获取测试样例的CSV文件
     *
     * @param problem_id 问题ID
     * @param isAdmin 是否未管理员
     * @return
     */
    ResponseEntity<byte[]> problemTestCaseFileGet(Long problem_id, boolean isAdmin) throws UnsupportedEncodingException;

    List<SubmissionsAlgorithmRecordsVo>  problemRecordsByUuidAndProblemIdByPage(Long problem_id, Long uuid, Integer pageNum);

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

    /**]
     * 返回当前用户上一次访问题目的链接
     *
     * @param uuid
     * @return
     */
    ProblemUserLastVo problemAlgorithmUserLast(Long uuid);

    /**
     * 是否设置信息成功
     *
     * @param userLastEnter 前端的请求
     * @param uuid 用户ID
     * @return 是否设置成功
     */
    boolean problemAlgorithmSetUserLast(UserLastEnter userLastEnter, Long uuid);
}