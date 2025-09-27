//package com.example.backend.service.math408;
//
//import com.baomidou.mybatisplus.extension.service.IService;
//import com.example.backend.models.domain.math408.ProblemMath408Bank;
//import com.example.backend.models.request.math408.ProblemRequest;
//import com.example.backend.models.request.problem.ProblemMath408Request;
//import com.example.backend.models.vo.problem.ProblemMath408BankVo;
//
//import javax.servlet.http.HttpServletRequest;
//import java.util.List;
//
//
//public interface ProblemsService extends IService<ProblemMath408Bank> {
//    /**
//     * 创建math408类型题目
//     *
//     * @param problemRequest 题目信息
//     * @return  是否创建成功
//     */
//    Boolean problemAdd(ProblemRequest problemRequest, boolean isAdmin);
//
//    /**
//     * 返回问题对应信息
//     *
//     * @param problem_id 问题id
//     * @return 问题信息
//     */
//    ProblemMath408BankVo getProblemInfoByProblemId(Integer problem_id, Integer uuid);
//
//    /**
//     * 获取题目答案
//     *
//     * @param problem_id 问题id
//     * @return 试题答案信息
//     */
//    String problemMath408GetProblemAnswer(Long problem_id);
//
//
//    /**
//     * 删除math408类型题目
//     *
//     * @param problem_id 题目id
//     * @return 是否成功删除
//     */
//    Boolean problemDelete(Long problem_id, boolean isAdmin, HttpServletRequest httpServletRequest);
//
//    /**
//     * 修改试题信息
//     * @param problemMath408Request
//     * @param isAdmin 是否为管理员
//     * @param httpServletRequest
//     * @return 是否修改成功
//     */
//    Boolean problemModify(ProblemMath408Request problemMath408Request, boolean isAdmin, HttpServletRequest httpServletRequest);
//}