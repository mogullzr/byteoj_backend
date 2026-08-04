package com.example.backend.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.config.RabbitMQConfig;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemAlgorithmBankMapper;
import com.example.backend.mapper.ProblemAlgorithmTagsMapper;
import com.example.backend.mapper.SubmissionsAlgorithmMapper;
import com.example.backend.models.domain.algorithm.UserLastEnter;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.domain.judge.JudgeTask;
import com.example.backend.models.domain.judge.JudgeTaskMessage;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.request.problem.ProblemAlgorithmRequest;
import com.example.backend.models.request.problem.ProblemAlgorithmTestCaseRequest;
import com.example.backend.models.vo.AliyunVodVo;
import com.example.backend.models.vo.ProblemDailyVo;
import com.example.backend.models.vo.competition.CompetitionProblemsVo;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemDailyNumVo;
import com.example.backend.models.vo.problem.ProblemTagsVo;
import com.example.backend.models.vo.problem.ProblemUserLastVo;
import com.example.backend.models.vo.similarity.ClusterVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.models.vo.similarity.CodeSimilarityVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.service.algorithm.JudgeTaskQueueService;
import com.example.backend.service.algorithm.JudgeTaskStateService;
import com.example.backend.service.embedding.SimilarityClusterService;
import com.example.backend.service.user.UserService;
import com.example.backend.mapper.UserMapper;
import com.fasterxml.jackson.core.JsonProcessingException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

@RestController
@RequestMapping("/problem/algorithm")
@Slf4j
public class ProblemAlgorithmController {

    // 启动时打印沙箱配置
    @PostConstruct
    public void init() {
        // log.info("[多沙箱配置] 沙箱数量：{}", RabbitMQConfig.SANDBOX_COUNT);
        for (int i = 0; i < RabbitMQConfig.SANDBOX_COUNT; i++) {
            // log.info("[多沙箱配置] 沙箱 {}: {} -> {}",
//                    i, RabbitMQConfig.QUEUE_NAMES[i], RabbitMQConfig.SANDBOX_URLS[i]);
        }
    }
    @Autowired
    ProblemAlgorithmBankMapper problemAlgorithmBankMapper;

    @Autowired
    public ProblemAlgorithmService problemAlgorithmService;


    @Autowired
    public ProblemAlgorithmTagsMapper problemAlgorithmTagsMapper;

    @Autowired
    public SubmissionsAlgorithmMapper submissionsAlgorithmMapper;

    @Autowired
    public UserService userService;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private SimilarityClusterService similarityClusterService;

    @Autowired
    private JudgeTaskQueueService judgeTaskQueueService;

    @Autowired
    private JudgeTaskStateService judgeTaskStateService;

    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Autowired
    private SimpMessagingTemplate messagingTemplate;  // WebSocket 推送

    // 🔥 使用固定线程池替代 new Thread()，避免线程资源耗尽
    private final ExecutorService judgeSubmitExecutor = Executors.newFixedThreadPool(RabbitMQConfig.SANDBOX_COUNT);

    // 🔥 轮询计数器：用于负载均衡分配沙箱
    private final AtomicInteger roundRobinCounter = new AtomicInteger(0);

    /**
     * 获取下一个沙箱索引（纯轮询）
     */
    private int getNextSandboxIndex() {
        return Math.abs(roundRobinCounter.getAndIncrement() % RabbitMQConfig.SANDBOX_COUNT);
    }

    @PostMapping("/search")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = false)
    public BaseResponse<List<ProblemAlgorithmBankVo>> ListAlgorithmVoByPage(@RequestBody AlgorithmQueryRequest algorithmQueryRequest, HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        List<ProblemAlgorithmBankVo> problemAlgorithmBankVos = problemAlgorithmService.ListAlgorithmVoByPage(algorithmQueryRequest, uuid, isAdmin);
        return ResultUtils.success(problemAlgorithmBankVos);
    }

    @GetMapping("/get/tags")
    public BaseResponse<List<String>> problemAlgorithmGetTags(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User user = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢");
        } else {
            uuid = user.getUuid();
        }

        List<String> result = problemAlgorithmService.problemAlgorithmGetTags(uuid);
        return ResultUtils.success(result);
    }

    @GetMapping("/get/tagsPlusCategory")
    public BaseResponse<List<ProblemTagsVo>> problemAlgorithmGetTagsPlusCategory(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        List<ProblemTagsVo> result = problemAlgorithmService.problemAlgorithmGetTagsPlusCategory();
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin = true)
    @PostMapping("/search/problems")
    public BaseResponse<List<CompetitionProblemsVo>> competitionSearchProblems(Long competition_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        uuid = loginUser.getUuid();
        List<CompetitionProblemsVo> result = problemAlgorithmService.competitionSearchProblems(competition_id, uuid);
        return ResultUtils.success(result);
    }
    @AccessLimit(seconds=5, maxCount=40, needLogin = true)
    @PostMapping("/search/problem")
    public BaseResponse<ProblemAlgorithmBankVo> competitionSearchProblem(Long competition_id, String index, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();
        ProblemAlgorithmBankVo result = problemAlgorithmService.competitionSearchProblem(competition_id, index, uuid);
        return ResultUtils.success(result);
    }
    @PostMapping("/search/problemId")
    public BaseResponse<ProblemAlgorithmBankVo> problemAlgorithmSearchByProblemId(Integer problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        ProblemAlgorithmBankVo result = problemAlgorithmService.problemSearchByProblemId(problem_id, httpServletRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/search/difficulty/sum")
    public BaseResponse<Long> problemAlgorithmSearchSumByDifficulty(String difficulty, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null || difficulty == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        Long result = problemAlgorithmService.problemSearchByDifficultyAndUuid(difficulty, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=20, needLogin=true)
    @PostMapping("/search/user/daily")
    public BaseResponse<List<ProblemDailyNumVo>> getProblemDailyNum(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        uuid = loginUser.getUuid();
        List<ProblemDailyNumVo> result = problemAlgorithmService.getProblemDailyNum(uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/records")
    public BaseResponse<List<SubmissionsAlgorithmRecordsVo>> problemAlgorithmRecordsByUUidByPage(Long problem_id, Integer pageNum, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<SubmissionsAlgorithmRecordsVo> result = problemAlgorithmService.problemRecordsByUuidAndProblemIdByPage(problem_id, uuid, pageNum);
        return ResultUtils.success(result);
    }

    @PostMapping("/records/page/sum")
    public BaseResponse<Long> problemAlgorithmRecordsSumByUuidByPage(Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        Page<SubmissionsAlgorithm> page = new Page<>(1, 10);
        QueryWrapper<SubmissionsAlgorithm> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);
        queryWrapper.eq("uuid", uuid);

        Long result = submissionsAlgorithmMapper.selectPage(page, queryWrapper).getPages();
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=false)
    @PostMapping("/records/user/page")
    public BaseResponse<List<SubmissionsAlgorithmRecordsVo>> problemAlgorithmRecordsAllByUuidByPage(Integer pageNum,HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        List<SubmissionsAlgorithmRecordsVo> result = problemAlgorithmService.problemAlgorithmRecordsAllByUuidByPage(uuid, pageNum);
        return ResultUtils.success(result);
    }

    @PostMapping("/records/user/sum")
    public BaseResponse<Long> problemAlgorithmRecordsAllSumByUuidByPage(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }

        Page<SubmissionsAlgorithm> page = new Page<>(1, 15);
        QueryWrapper<SubmissionsAlgorithm> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);

        Long result = submissionsAlgorithmMapper.selectPage(page, queryWrapper).getPages();
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=true)
    @PostMapping("/records/recordId")
    public BaseResponse<SubmissionsAlgorithmRecordsVo> problemAlgorithmRecordByRecordId(HttpServletRequest httpServletRequest, Long submission_id, Long competition_id) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        }
        boolean isAdmin = userService.isAdmin(httpServletRequest);

        SubmissionsAlgorithmRecordsVo result = problemAlgorithmService.problemAlgorithmRecordByRecordId(submission_id, isAdmin, uuid, competition_id);

        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=true)
    @PostMapping("/judge/test")
    public BaseResponse<JudgeTask> problemAlgorithmJudge(@RequestBody JudgeRequest judgeRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        JudgeTask result = judgeTaskQueueService.enqueue(judgeRequest, loginUser.getUuid(), "DEBUG");
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=20, needLogin=true)
    @PostMapping("/judge/submit")
    public BaseResponse<JudgeTask> problemAlgorithmJudgeSubmit(@RequestBody JudgeRequest judgeRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        JudgeTask result = judgeTaskQueueService.enqueue(judgeRequest, loginUser.getUuid(), "SUBMIT");
        return ResultUtils.success(result);
    }

    /** 全站提交监控列表。列表公开提交人的基础信息，但详情接口仍由现有权限校验保护。 */
    @AccessLimit(seconds = 5, maxCount = 30, needLogin = true)
    @PostMapping("/records/global")
    public BaseResponse<List<SubmissionsAlgorithmRecordsVo>> problemAlgorithmRecordsGlobalByPage(
            @RequestParam(defaultValue = "1") Integer pageNum,
            @RequestParam(defaultValue = "20") Integer pageSize,
            @RequestParam(required = false) String result,
            @RequestParam(required = false) String username,
            @RequestParam(required = false) String problem,
            @RequestParam(required = false) String language,
            @RequestParam(required = false) String startTime,
            @RequestParam(required = false) String endTime,
            HttpServletRequest httpServletRequest) {
        if (userService.getLoginUser(httpServletRequest) == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        }
        return ResultUtils.success(problemAlgorithmService.problemAlgorithmRecordsGlobalByPage(
                pageNum, pageSize, result, username, problem, language, startTime, endTime));
    }

    @AccessLimit(seconds = 5, maxCount = 60, needLogin = true)
    @GetMapping("/judge/task/{taskId}")
    public BaseResponse<JudgeTask> problemAlgorithmJudgeTask(@PathVariable String taskId,
                                                               HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR);
        JudgeTask task = judgeTaskStateService.get(taskId);
        if (task == null) throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "判题任务不存在或已过期");
        if (!loginUser.getUuid().equals(task.getUserUuid()) && !userService.isAdmin(httpServletRequest)) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR);
        }
        return ResultUtils.success(task);
    }

    /**
     * 兼容旧前端的任务补查地址。
     */
    @AccessLimit(seconds = 5, maxCount = 60, needLogin = true)
    @GetMapping("/judge/result")
    public BaseResponse<JudgeTask> problemAlgorithmJudgeResult(@RequestParam String taskId,
                                                                HttpServletRequest httpServletRequest) {
        return problemAlgorithmJudgeTask(taskId, httpServletRequest);
    }


    @AccessLimit(seconds=5, maxCount=15, needLogin=true)
    @GetMapping("/aliyun/vod")
    public BaseResponse<AliyunVodVo> AliyunVodGet(@RequestParam("problem_id") Long problem_id)
            throws Exception {
        AliyunVodVo result = problemAlgorithmService.AliyunVodGet(problem_id);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=15, needLogin=true)
    @GetMapping("/aliyun/vod/add")
    public BaseResponse<AliyunVodVo> AliyunVodAdd(@RequestParam("problem_id") Long problem_id)
            throws Exception {
        AliyunVodVo result = problemAlgorithmService.AliyunVodGet(problem_id);
        return ResultUtils.success(result);
    }

    @PostMapping("/record/add")
    public BaseResponse<Boolean> problemAlgorithmRecordAdd(@RequestBody JudgeRequest judgeRequest, HttpServletRequest httpServletRequest){
        if(httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢");
        }

        Boolean result = problemAlgorithmService.problemAlgorithmRecordAdd(uuid, judgeRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/admin/add")
    public BaseResponse<Boolean> problemAlgorithmAdd(@RequestBody ProblemAlgorithmRequest problemAlgorithmRequest, String username, Integer status, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录呢！");
        }
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemAlgorithmService.problemAdd(problemAlgorithmRequest, isAdmin, uuid, username, status, httpServletRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/admin/delete")
    public BaseResponse<Boolean> problemAlgorithmDelete(Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemAlgorithmService.problemDelete(problem_id, isAdmin, httpServletRequest);

        return ResultUtils.success(result);
    }

    @PostMapping("/admin/modify")
    public BaseResponse<Boolean> problemAlgorithmModify(@RequestBody ProblemAlgorithmRequest problemAlgorithmRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Boolean result = problemAlgorithmService.problemModify(problemAlgorithmRequest, isAdmin, httpServletRequest);

        return ResultUtils.success(result);
    }

    @PostMapping("/admin/testCase/get")
    public BaseResponse<List<ProblemAlgorithmTestCaseRequest>> problemAlgorithmTestCaseGet(Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录！！！");
        }
        List<ProblemAlgorithmTestCaseRequest> result = problemAlgorithmService.problemTestCaseGet(problem_id,isAdmin);

        return ResultUtils.success(result);

    }

    @PostMapping("/admin/testCaseFile/get")
    public BaseResponse<ResponseEntity<byte[]>> problemAlgorithmTestCaseFileGet(Long problem_id, HttpServletRequest httpServletRequest) throws UnsupportedEncodingException {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = -1L;
        if (loginUser != null) {
            uuid = loginUser.getUuid();
        } else {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录！！！");
        }

        ResponseEntity<byte[]> result = problemAlgorithmService.problemTestCaseFileGet(problem_id,isAdmin);

        return ResultUtils.success(result);
    }

    @PostMapping("/admin/testCase/add")
    public BaseResponse<Boolean> problemAlgorithmTestCaseAdd(@RequestBody List<ProblemAlgorithmTestCaseRequest> problemAlgorithmTestCaseRequestList, Long problem_id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录！！！");
        }
        Boolean result = problemAlgorithmService.problemTestCaseAdd(problemAlgorithmTestCaseRequestList, isAdmin, problem_id);

        return ResultUtils.success(result);

    }

    @PostMapping("/admin/testCaseFile/add")
    public BaseResponse<Boolean> problemAlgorithmTestCasesAdd(@RequestParam("file") MultipartFile TestFile, Long problem_id, HttpServletRequest httpServletRequest) throws IOException {
        if (httpServletRequest == null || TestFile.isEmpty()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "请求信息和文件信息均不允许为空！！！");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "你还没有登录！！！");
        }
        Boolean result = problemAlgorithmService.problemTestCasesFileAdd(TestFile, isAdmin, problem_id);

        return ResultUtils.success(result);

    }

    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)
    @GetMapping("/search/problemLast")
    public BaseResponse<ProblemUserLastVo> problemAlgorithmUserLast(HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        ProblemUserLastVo problemUserLastVo = problemAlgorithmService.problemAlgorithmUserLast(uuid);
        return ResultUtils.success(problemUserLastVo);
    }

    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)
    @PostMapping("/set/problemLast")
    public BaseResponse<Boolean> problemAlgorithmSetUserLast(@RequestBody UserLastEnter userLastEnter, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = problemAlgorithmService.problemAlgorithmSetUserLast(userLastEnter, uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)
    @PostMapping("/get/daily")
    public BaseResponse<List<ProblemDailyVo>> problemDailyGet(HttpServletRequest httpServletRequest){
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        List<ProblemDailyVo> result = problemAlgorithmService.problemDailyGet(uuid);
        return ResultUtils.success(result);
    }

    /**
     * 查询代码相似度结果(分页)
     * @param competitionId 竞赛ID
     * @param problemIndex 题目索引(可选,不传则查询所有题目)
     * @param currentPage 当前页码(从1开始)
     * @param pageSize 每页条数(默认20)
     * @return 分页的相似度结果
     */
    @AccessLimit(seconds = 5, maxCount = 20, needLogin = true)
    @GetMapping("/similarity/list")
    public BaseResponse<Page<CodeSimilarityVo>> getSimilarityList(
            @RequestParam Long competitionId,
            @RequestParam(required = false) Integer uuid,
            @RequestParam(required = false) String problemIndex,
            @RequestParam(defaultValue = "1") Integer currentPage,
            @RequestParam(defaultValue = "20") Integer pageSize) {

        Page<CodeSimilarityVo> result = problemAlgorithmService.getSimilarityList(competitionId, uuid, problemIndex, currentPage, pageSize);

        return ResultUtils.success(result);
    }

    /**
     * 查询某题目的抄袭团伙(分页,每次一个团伙)
     */
    @AccessLimit(seconds = 5, maxCount = 20, needLogin = true)
    @GetMapping("/similarity/clusters")
    public BaseResponse<Page<ClusterVo>> getClustersByProblem(
            @RequestParam Long competitionId,
            @RequestParam(required = false) String problemIndex,
            @RequestParam(defaultValue = "1") Integer currentPage,
            @RequestParam(defaultValue = "1") Integer pageSize) throws JsonProcessingException {
        Page<ClusterVo> result = similarityClusterService.getClustersByProblem(
                competitionId, problemIndex, currentPage, pageSize);
        return ResultUtils.success(result);
    }

    /**
     * 查询某用户的抄袭关系网
     */
    @AccessLimit(seconds = 5, maxCount = 20, needLogin = true)
    @GetMapping("/similarity/clusters/user")
    public BaseResponse<Page<ClusterVo>> getClustersByUser(
            @RequestParam Long competitionId,
            @RequestParam Long userUuid,
            @RequestParam(defaultValue = "1") Integer currentPage,
            @RequestParam(defaultValue = "10") Integer pageSize) throws JsonProcessingException {
        Page<ClusterVo> result = similarityClusterService.getClustersByUser(
                competitionId, userUuid, currentPage, pageSize);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)
    @PostMapping("/set/daily")
    public BaseResponse<Boolean> problemDailySet(Long problem_id, HttpServletRequest httpServletRequest){
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        Boolean result = problemAlgorithmService.problemDailySet(problem_id, uuid);
        return ResultUtils.success(result);
    }
}
