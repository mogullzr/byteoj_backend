package com.example.backend.service.math408;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.math408.ProblemMath408Bank;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.math408.ProblemExamSubmitRequest;
import com.example.backend.models.request.math408.ProblemRequest;
import com.example.backend.models.request.problem.Math408QueryRequest;
import com.example.backend.models.request.problem.ProblemExamEditRequest;
import com.example.backend.models.request.problem.ProblemExamGeneratePaperSqlRequest;
import com.example.backend.models.request.problem.ProblemExamRequest;
import com.example.backend.models.vo.problem.ProblemExamSubmitVo;
import com.example.backend.models.vo.problem.ProblemExamSheetPaperVo;
import com.example.backend.models.vo.problem.ProblemExamSheetVo;
import com.example.backend.models.vo.problem.ProblemExamVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.models.vo.problem.ProblemSimilarityVo;

import java.util.List;

/**
* @author Mogullzr
* @description 针对表【problem_math408_bank(math题目基本信息表)】的数据库操作Service
* @createDate 2026-01-25 20:23:07
*/
public interface ProblemMath408BankService extends IService<ProblemMath408Bank> {

    /**
     * 多条件查找题目信息
     *
     * @param math408QueryRequest 前端请求
     * @param isAdmin 是否为管理员
     * @return 题目列表信息
     */
    List<ProblemMath408BankVo> problemSearch(Math408QueryRequest math408QueryRequest, boolean isAdmin);

    /**
     * 查询试题信息
     *
     * @param problemId 问题ID
     * @return 试题信息
     */
    ProblemMath408BankVo problemSearchByProblemId(Long problemId);

    /**
     * 试题更新
     *
     * @param problemRequest 试题更新请求
     * @param uuid 用户ID
     * @param account 用户名
     * @return 是否更新成功
     */
    Boolean problemUpdate(ProblemRequest problemRequest, Long uuid, String account);


    /**
     * 分页查找考试信息
     *
     * @param problemExamRequest 请求信息
     * @return 考试信息
     */
    List<ProblemExamVo> problemExamSearch(ProblemExamRequest problemExamRequest, Long uuid);

    /**
     * 查看考试详细信息
     *
     * @param examId 考试ID
     * @return 考试题目信息
     */
    ProblemExamVo problemSearchExamId(Long examId, Long uuid);

    /**
     * 查找考试详细试题
     *
     * @param examId 考试ID
     * @return 考试试题列表
     */
    List<ProblemMath408BankVo> problemExamSearchDetail(Long examId);

    /**
     * 添加/修改考试信息
     *
     * @param problemExamEditRequest 考试编辑信息请求
     * @param user 用户
     * @return 是否编辑成功
     */
    Boolean problemExamEdit(ProblemExamEditRequest problemExamEditRequest, User user);

    /**
     * 查询相似试题
     *
     * @param problemIdList 问题ID列表
     * @param uuid 用户ID
     * @return 问题列表信息
     */
    List<ProblemSimilarityVo> problemSearchSimilarity(List<Long> problemIdList, Long uuid);

    /**
     * 考试提交信息判题
     *
     * @param problemExamSubmitRequest 考试请求
     * @param uuid 用户ID
     * @param username 用户名
     * @return 获取考试信息
     */
    ProblemExamSubmitVo problemExamSubmit(ProblemExamSubmitRequest problemExamSubmitRequest, Long uuid, String username);

    Boolean problemExamJoin(Long examId, Long uuid, String username);

    List<ProblemExamSheetPaperVo> problemExamRecords(Long examId, Long uuid, Integer pageNum);

    List<ProblemExamSheetVo> problemExamSheet(Long recordId, Long uuid);

    String problemExamGeneratePaperSql(ProblemExamGeneratePaperSqlRequest request, User user);
}
