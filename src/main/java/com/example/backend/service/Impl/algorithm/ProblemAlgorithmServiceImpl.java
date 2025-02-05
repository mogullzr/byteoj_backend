package com.example.backend.service.Impl.algorithm;
import java.util.List;

import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONUtil;
import com.alibaba.nacos.shaded.com.google.common.reflect.TypeToken;
import com.alibaba.nacos.shaded.com.google.gson.Gson;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.SearchDifficutlyEnum;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmLimit;
import com.example.backend.models.domain.algorithm.submission.SubmissionAlgorithmDetails;
import com.example.backend.models.domain.algorithm.submission.SubmissionAlgorithmRecords;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTags;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTagsRelation;
import com.example.backend.models.domain.algorithm.test.AlgorithmTestCase;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.models.request.problem.AlgorithmQueryRequest;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemDailyNumVo;
import com.example.backend.models.vo.submission.SubmissionAlgorithmDetailRecordVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.models.domain.algorithm.*;
import com.example.backend.models.domain.user.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

@Service
@Slf4j
public class ProblemAlgorithmServiceImpl extends ServiceImpl<ProblemAlgorithmBankMapper, ProblemAlgorithmBank>
        implements ProblemAlgorithmService {

    @Value("${JUDGE_URL.URL}")
    private String URL;
    @Resource
    private AcAlgorithmProblemMapper acAlgorithmProblemMapper;

    @Resource
    private ProblemAlgorithmTagsMapper problemAlgorithmTagsMapper;

    @Resource
    private ProblemAlgorithmTagsRelationMapper problemAlgorithmTagsRelationMapper;

    @Resource
    private ProblemAlgorithmBankMapper problemAlgorithmBankMapper;
    @Resource
    ProblemAlgorithmLimitMapper problemAlgorithmLimitMapper;

    @Resource
    AlgorithmTestCaseMapper algorithmTestCaseMapper;
    @Resource
    SubmissionsAlgorithmMapper submissionsAlgorithmMapper;

    @Resource
    SubmissionAlgorithmDetailsMapper submissionAlgorithmDetailsMapper;

    @Resource
    SubmissionAlgorithmRecordsMapper submissionAlgorithmRecordsMapper;
    @Resource
    private UserMapper userMapper;

    @Resource
    private UserLastEnterMapper userLastEnterMapper;

    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<ProblemAlgorithmBankVo> ListAlgorithmVoByPage(AlgorithmQueryRequest algorithmQueryRequest, Long uuid) {
        // 参数验证
        validatePagination(algorithmQueryRequest.getPageNum(), algorithmQueryRequest.getPageSize());

        Integer pageNum = algorithmQueryRequest.getPageNum();
        Integer pageSize = algorithmQueryRequest.getPageSize();
        String keyword = algorithmQueryRequest.getKeyword();
        List<Integer> tagsList = algorithmQueryRequest.getTagsList();
        List<String> sourceList = algorithmQueryRequest.getSourceList();
        String difficulty = algorithmQueryRequest.getDifficulty();

        // 分页查询初始化
        Page<ProblemAlgorithmBank> problemAlgorithmBankPage = new Page<>(pageNum, pageSize);
        QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
        List<ProblemAlgorithmBankVo> problemAlgorithmVoList = new ArrayList<>();

        // 关键字查询
        if (keyword != null && !keyword.isEmpty()) {
            problemAlgorithmBankQueryWrapper.like("chinese_name", keyword);
        }

        // 难度查询
        if (difficulty != null && !difficulty.isEmpty()) {
            difficulty = getDifficultyText(difficulty);
            problemAlgorithmBankQueryWrapper.eq("difficulty_name", difficulty);
        }

        // 来源查询
        if (sourceList != null && !sourceList.isEmpty()) {
            problemAlgorithmBankQueryWrapper.and(wrapper -> {
                for (String source : sourceList) {
                    wrapper.or().like("source_name", source);
                }
            });
        }

        // 标签查询：使用 JOIN 合并查询
        if (tagsList != null && !tagsList.isEmpty()) {
            String tagsCondition = tagsList.stream()
                    .map(String::valueOf)
                    .collect(Collectors.joining(","));

            // 构建子查询，将符合标签条件的 problem_id 筛选出来
            problemAlgorithmBankQueryWrapper.inSql("problem_id",
                    "SELECT DISTINCT problem_id FROM problem_algorithm_tags WHERE tag_id IN (" + tagsCondition + ")"
            );
        }

        // 执行分页查询
        Page<ProblemAlgorithmBank> page = problemAlgorithmBankMapper.selectPage(problemAlgorithmBankPage, problemAlgorithmBankQueryWrapper);
        List<ProblemAlgorithmBank> problemAlgorithmBankList = page.getRecords();
        Long pages = page.getPages();

        // 获取所有问题的 ID 用于批量查询标签
        List<Long> problemIds = problemAlgorithmBankList.stream()
                .map(ProblemAlgorithmBank::getProblem_id)
                .collect(Collectors.toList());

        // 批量查询所有问题的标签名称
        Map<Long, List<String>> problemAlgorithmTagsMap = getProblemAlgorithmTagsWithNames(problemIds);

        boolean isFirst = true;
        // 遍历查询结果并转换为 VO
        for (ProblemAlgorithmBank problemAlgorithmBank : problemAlgorithmBankList) {
            List<String> problemAlgorithmTags = problemAlgorithmTagsMap.get(problemAlgorithmBank.getProblem_id());
            String description = problemAlgorithmBank.getDescription();
            ProblemAlgorithmBankVo problemAlgorithmVO = getProblemAlgorithmVO(problemAlgorithmBank, uuid, problemAlgorithmTags);

            // 设置描述，最多100个字符
            problemAlgorithmVO.setDescription(description.length() > 100 ? description.substring(0, 100) : description);

            if (isFirst) {
                problemAlgorithmVO.setPages(Math.toIntExact(pages));
                isFirst = false;
            }
            problemAlgorithmVoList.add(problemAlgorithmVO);
        }

        return problemAlgorithmVoList;
    }

    // 提取的批量查询标签方法，包括标签名称
    private Map<Long, List<String>> getProblemAlgorithmTagsWithNames(List<Long> problemIds) {
        // 1. 检查 problemIds 是否为空，如果为空，则直接返回空结果
        if (problemIds == null || problemIds.isEmpty()) {
            return new HashMap<>();
        }

        // 2. 创建结果容器
        Map<Long, List<String>> result = new HashMap<>();

        // 3. 循环查询每个 problem_id 对应的标签
        for (Long problemId : problemIds) {
            // 4. 构建查询语句：根据每个 problem_id 查找对应的标签
            String query = "SELECT t.tag_name " +
                    "FROM problem_algorithm_tags p " +
                    "JOIN problem_algorithm_tags_relation t ON p.tag_id = t.tag_id " +
                    "WHERE p.problem_id = ? " +
                    "AND p.is_delete = 0";

            List<String> tags = new ArrayList<>();
            try {
                // 5. 执行查询，获取该 problem_id 对应的所有标签
                tags = jdbcTemplate.queryForList(query, String.class, problemId);
                if (tags.isEmpty()) {
                    log.info("No tags found for problem_id: " + problemId);
                } else {
                    log.info("Found tags for problem_id " + problemId + ": " + tags);
                }
            } catch (Exception e) {
                // 6. 捕获异常并处理
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "查询标签时发生错误: " + e.getMessage());
            }

            // 7. 将该 problem_id 和标签列表存入结果 Map
            result.put(problemId, tags);
        }

        // 8. 返回最终结果
        return result;
    }


    // 获取难度名称的转换
    private String getDifficultyText(String difficulty) {
        SearchDifficutlyEnum enumByValue = SearchDifficutlyEnum.getEnumByValue(difficulty);
        if (enumByValue == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数出现错误了！");
        }
        return enumByValue.getText();
    }

    // 参数验证方法
    private void validatePagination(Integer pageNum, Integer pageSize) {
        if (pageNum == null || pageSize == null || pageNum <= 0 || pageSize <= 0 || pageSize > 50) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数出现错误了！");
        }
    }

    @Override
    public List<SubmissionsAlgorithmRecordsVo> problemAlgorithmRecordsAllByUuidByPage(Long uuid, Integer pageNum) {
        Page<SubmissionsAlgorithm> page = new Page<>(pageNum, 15);
        QueryWrapper<SubmissionsAlgorithm> submissionsAlgorithmQueryWrapper = new QueryWrapper<>();
        submissionsAlgorithmQueryWrapper.eq("uuid", uuid);

        List<SubmissionsAlgorithm> submissionsAlgorithmList = submissionsAlgorithmMapper.selectPage(page, submissionsAlgorithmQueryWrapper).getRecords();
        List<SubmissionsAlgorithmRecordsVo> submissionsAlgorithmRecordsVoList = new ArrayList<>();

        for (int item = 0; item < submissionsAlgorithmList.size(); item++) {
            QueryWrapper<SubmissionAlgorithmDetails> submissionAlgorithmDetailsQueryWrapper = new QueryWrapper<>();
            submissionAlgorithmDetailsQueryWrapper.eq("submission_id", submissionsAlgorithmList.get(item).getSubmission_id());

            submissionsAlgorithmRecordsVoList.add(getSubmissionsAlgorithmRecordsVO(submissionsAlgorithmList.get(item), submissionAlgorithmDetailsMapper.selectOne(submissionAlgorithmDetailsQueryWrapper)));
        }

        return submissionsAlgorithmRecordsVoList;
    }

    @Override
    public SubmissionsAlgorithmRecordsVo problemAlgorithmRecordByRecordId(Long submission_id, boolean isAdmin, Long uuid, Long competition_id) {
        QueryWrapper<SubmissionsAlgorithm> queryWrapper1 = new QueryWrapper<>();
        if (competition_id == -1) {
            queryWrapper1.eq("uuid", uuid);
        }
        queryWrapper1.eq("submission_id", submission_id);

        QueryWrapper<SubmissionAlgorithmDetails> queryWrapper2 = new QueryWrapper<>();
        queryWrapper2.eq("submission_id", submission_id);

        SubmissionsAlgorithm submissionsAlgorithm = submissionsAlgorithmMapper.selectOne(queryWrapper1);
        SubmissionAlgorithmDetails submissionAlgorithmDetails = submissionAlgorithmDetailsMapper.selectOne(queryWrapper2);

        if (submissionsAlgorithm == null || submissionAlgorithmDetails == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的记录");
        }


        // 2.查询细节记录
        QueryWrapper<SubmissionAlgorithmRecords> submissionAlgorithmDetailsQueryWrapper = new QueryWrapper<>();
        submissionAlgorithmDetailsQueryWrapper.eq("submission_id", submission_id);
        List<SubmissionAlgorithmRecords> submissionAlgorithmRecordsList = submissionAlgorithmRecordsMapper.selectList(submissionAlgorithmDetailsQueryWrapper);

        List<SubmissionAlgorithmDetailRecordVo> submissionAlgorithmDetailsList1 = new ArrayList<>();
        submissionAlgorithmRecordsList.forEach((detail)->{
            SubmissionAlgorithmDetailRecordVo submissionAlgorithmDetailRecordVo = new SubmissionAlgorithmDetailRecordVo();
            submissionAlgorithmDetailRecordVo.setTime_used(detail.getTime_used());
            submissionAlgorithmDetailRecordVo.setMemory_used(detail.getMemory_used());
            submissionAlgorithmDetailRecordVo.setResult(detail.getResult());

            submissionAlgorithmDetailsList1.add(submissionAlgorithmDetailRecordVo);
        });

        SubmissionsAlgorithmRecordsVo submissionsAlgorithmRecordsVO = getSubmissionsAlgorithmRecordsVO(submissionsAlgorithm, submissionAlgorithmDetails);
        submissionsAlgorithmRecordsVO.setSource_code(submissionsAlgorithm.getSource_code());
        submissionsAlgorithmRecordsVO.setSubmission_list(submissionAlgorithmDetailsList1);

        return submissionsAlgorithmRecordsVO;
    }

    @Override
    public List<String> problemAlgorithmGetTags(Long uuid) {
        List<ProblemAlgorithmTagsRelation> problemAlgorithmTagsRelationList = problemAlgorithmTagsRelationMapper.selectList(null);
        List<String> TagsList = new ArrayList<>();

        problemAlgorithmTagsRelationList.forEach((tag)->{
            TagsList.add(tag.getTag_name());
        });

        return TagsList;
    }

    @Override
    public ProblemAlgorithmBankVo problemSearchByProblemId(Integer problem_id, HttpServletRequest httpServletRequest) {
        ProblemAlgorithmBank problemAlgorithmBank = getProblemAlgorithmBank(Long.valueOf(problem_id), 0);

        if (problemAlgorithmBank == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "此题目不存在或者题目或已经被隐藏");
        }
        List<String> tagsList = getProblemAlgorithmTags(problemAlgorithmBank.getProblem_id(), 0);
        ProblemAlgorithmBankVo problemAlgorithmVO = getProblemAlgorithmVO(problemAlgorithmBank, -1L, tagsList);
        problemAlgorithmVO.setDescription(problemAlgorithmBank.getDescription());
        return problemAlgorithmVO;
    }

    @Override
    public List<ProblemDailyNumVo> getProblemDailyNum(Long uuid) {
        QueryWrapper<AcAlgorithmProblem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", uuid);

        List<AcAlgorithmProblem> acAlgorithmProblemsList = acAlgorithmProblemMapper.selectList(queryWrapper);
        List<ProblemDailyNumVo> problemDailyNumVoList = new ArrayList<>();
        Map<String, Long> problemDailyNumVoMap = new HashMap<>();

        acAlgorithmProblemsList.forEach((acProblem)->{
            Date date = acProblem.getCreate_time();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String formattedDate = dateFormat.format(date);
            problemDailyNumVoMap.put(formattedDate, problemDailyNumVoMap.getOrDefault(formattedDate, 0L) + 1);
        });
        for (Map.Entry<String, Long> entry : problemDailyNumVoMap.entrySet()) {
            ProblemDailyNumVo problemDailyNumVo = new ProblemDailyNumVo();
            problemDailyNumVo.setNum(entry.getValue());
            problemDailyNumVo.setDate(entry.getKey());
            problemDailyNumVoList.add(problemDailyNumVo);
        }

        return problemDailyNumVoList;
    }


    @Override
    public List<SubmissionsAlgorithmRecordsVo>  problemRecordsByUuidAndProblemIdByPage(Long problem_id, Long uuid, Integer pageNum) {
        Page<SubmissionsAlgorithm> page = new Page<>(pageNum, 10);
        QueryWrapper<SubmissionsAlgorithm> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);
        queryWrapper.eq("uuid", uuid);
        queryWrapper.orderByDesc("submit_time");

        List<SubmissionsAlgorithm> submissionsAlgorithm = submissionsAlgorithmMapper.selectPage(page, queryWrapper).getRecords();
        List<SubmissionsAlgorithmRecordsVo> submissionsAlgorithmRecordsVoList = new ArrayList<>();

        for (int item = 0; item < submissionsAlgorithm.size(); item++) {
            QueryWrapper<SubmissionAlgorithmDetails> submissionAlgorithmDetailsQueryWrapper = new QueryWrapper<>();
            submissionAlgorithmDetailsQueryWrapper.eq("submission_id", submissionsAlgorithm.get(item).getSubmission_id());
            submissionAlgorithmDetailsQueryWrapper.orderByDesc("submission_id");
            submissionsAlgorithmRecordsVoList.add(getSubmissionsAlgorithmRecordsVO(submissionsAlgorithm.get(item), submissionAlgorithmDetailsMapper.selectOne(submissionAlgorithmDetailsQueryWrapper)));
        }

        return submissionsAlgorithmRecordsVoList;
    }

    private SubmissionsAlgorithmRecordsVo getSubmissionsAlgorithmRecordsVO(SubmissionsAlgorithm submissionsAlgorithm, SubmissionAlgorithmDetails submissionAlgorithmDetails) {
        SubmissionsAlgorithmRecordsVo submissionsAlgorithmRecordsVo = new SubmissionsAlgorithmRecordsVo();
        submissionsAlgorithmRecordsVo.setCode_length(submissionsAlgorithm.getCode_length());
        submissionsAlgorithmRecordsVo.setSubmission_id(submissionsAlgorithm.getSubmission_id());
        submissionsAlgorithmRecordsVo.setLanguage(submissionsAlgorithm.getLanguages());
        submissionsAlgorithmRecordsVo.setSubmit_time(submissionsAlgorithm.getSubmit_time());
        submissionsAlgorithmRecordsVo.setResult(submissionsAlgorithm.getResults());
        submissionsAlgorithmRecordsVo.setScore(submissionsAlgorithm.getScore());
        submissionsAlgorithmRecordsVo.setTime_used(submissionAlgorithmDetails.getTime_used());
        submissionsAlgorithmRecordsVo.setMemory_used(submissionAlgorithmDetails.getMemory_used());

        // 根据用户uuid获取用户名字 + 头像
        submissionsAlgorithmRecordsVo.setUuid(submissionsAlgorithm.getUuid());

        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("uuid", submissionsAlgorithm.getUuid());
        User user = userMapper.selectOne(userQueryWrapper);

        submissionsAlgorithmRecordsVo.setUser_name(user.getUsername());
        submissionsAlgorithmRecordsVo.setAvatar(user.getAvatar());

        // 根据problem_id来查找问题名字
        QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
        problemAlgorithmBankQueryWrapper.eq("problem_id", submissionsAlgorithm.getProblem_id());
        ProblemAlgorithmBank problemAlgorithmBank = problemAlgorithmBankMapper.selectOne(problemAlgorithmBankQueryWrapper);

        submissionsAlgorithmRecordsVo.setChinese_name(problemAlgorithmBank.getChinese_name());
        return submissionsAlgorithmRecordsVo;
    }


    @Override
    public Boolean problemAlgorithmRecordAdd(Long uuid, JudgeRequest judgeRequest) {
        SubmissionsAlgorithm submissionsAlgorithm = new SubmissionsAlgorithm();
        submissionsAlgorithm.setUuid(uuid);
        submissionsAlgorithm.setProblem_id(judgeRequest.getProblem_id());
        submissionsAlgorithm.setSource_code(judgeRequest.getSource_code());
        submissionsAlgorithm.setCode_length(judgeRequest.getSource_code().length());
        submissionsAlgorithm.setLanguages(judgeRequest.getLanguage());
        submissionsAlgorithm.setSubmit_time(new Date());
        submissionsAlgorithm.setResults(judgeRequest.getResult());
        submissionsAlgorithm.setScore(judgeRequest.getScore());

        QueryWrapper<AcAlgorithmProblem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);
        queryWrapper.eq("problem_id", judgeRequest.getProblem_id());
        AcAlgorithmProblem ac = acAlgorithmProblemMapper.selectOne(queryWrapper);
        if (ac != null) {
            if (submissionsAlgorithm.getResults() == "Wrong Answer") {
                ac.setStatus(0);
            } else if (submissionsAlgorithm.getResults() == "Accepted"){
                ac.setStatus(1);
            } else {
                ac.setStatus(2);
            }
            return acAlgorithmProblemMapper.update(ac, queryWrapper) == 1;
        } else {
            AcAlgorithmProblem acAlgorithmProblem = new AcAlgorithmProblem();
            acAlgorithmProblem.setProblem_id(judgeRequest.getProblem_id());
            acAlgorithmProblem.setUser_id(uuid);
            acAlgorithmProblem.setCreate_time(new Date());
            if (submissionsAlgorithm.getResults() == "Wrong Answer") {
                acAlgorithmProblem.setStatus(0);
            } else if (submissionsAlgorithm.getResults() == "Accepted"){
                acAlgorithmProblem.setStatus(1);
            } else {
                acAlgorithmProblem.setStatus(2);
            }
            acAlgorithmProblem.setDifficulty_name(judgeRequest.getDifficulty_name());
            return submissionsAlgorithmMapper.insert(submissionsAlgorithm) == 1;
        }
    }

    @Override
    public List<Judge> problemAlgorithmJudge(JudgeRequest judgeRequest) {
        QueryWrapper<ProblemAlgorithmLimit> problemAlgorithmLimitQueryWrapper = new QueryWrapper<>();
        if (judgeRequest.getProblem_id() != null) {
            problemAlgorithmLimitQueryWrapper.eq("problem_id", judgeRequest.getProblem_id());
        }else {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息错误");
        }
        ProblemAlgorithmLimit problemAlgorithmLimit = problemAlgorithmLimitMapper.selectOne(problemAlgorithmLimitQueryWrapper);
        if (problemAlgorithmLimit == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "此题信息存在缺失，请联系总管理员8989561494@qq.com");
        }

        return getJudgeList(judgeRequest, problemAlgorithmLimit);
    }

    private static List<Judge> getJudgeList(JudgeRequest judgeRequest, ProblemAlgorithmLimit problemAlgorithmLimit) {
        String language = judgeRequest.getLanguage();
        String source_code = judgeRequest.getSource_code();
        Integer time_used = problemAlgorithmLimit.getCpu_limit();
        Integer memory_used = problemAlgorithmLimit.getMemory_limit();

        List<String> input_list = judgeRequest.getInput_list();
        List<HashMap<String, Object>> mapList = new ArrayList<>();
        List<HashMap<String, Object>> fileList = new ArrayList<>();
        HashMap<String, Object> data = new HashMap<>();

        if (!language.equals("python")) {
            data.put("code", source_code);
            data.put("language", language);
            data.put("input", input_list.get(0));
            data.put("cpuLimit", time_used * 3000000000L);
            fileList.add(data);

            HttpResponse response = HttpRequest.post("http://101.43.48.120:6048/build")
                    .header("Content-Type", "application/json")  // 设置 Content-Type 为 application/json
                    .body(JSONUtil.toJsonStr(fileList))  // 将参数 Map 转换为 JSON 字符串
                    .execute();  // 执行请求


            // 处理响应
            String responseBody = response.body();

            // 创建 Gson 实例
            Gson gson = new Gson();

            // 定义泛型类型
            Type listType = new TypeToken<List<Judge>>() {}.getType();

            // 解析 JSON 数组
            List<Judge> jsonList = gson.fromJson(responseBody, listType);

            // 获取到句柄fileId
            String fileId;
            if (Objects.equals(jsonList.get(0).getStatus(), "Accepted")) {
                fileId = jsonList.get(0).getFileId();
            } else {
                jsonList.get(0).setMemory(jsonList.get(0).getMemory() / (1024 * 1024));
                jsonList.get(0).setTime(jsonList.get(0).getTime() / 1000000);
                return jsonList;
            }

            // 再连续请求运行即可
            input_list.forEach((input)->{
                HashMap<String, Object> paramMap = new HashMap<>();
                paramMap.put("input", input);
                paramMap.put("cpuLimit", time_used * 1000000000L);
                paramMap.put("memoryLimit", memory_used * 1024 * 1024);
                paramMap.put("fileId", fileId);
                paramMap.put("language", language);

                mapList.add(paramMap);
            });

            response = HttpRequest.post("http://101.43.48.120:6048/exec")
                    .header("Content-Type", "application/json")  // 设置 Content-Type 为 application/json
                    .body(JSONUtil.toJsonStr(mapList))  // 将参数 Map 转换为 JSON 字符串
                    .execute();  // 执行请求

            // 处理响应
            responseBody = response.body();

            // 解析 JSON 数组
            jsonList = gson.fromJson(responseBody, listType);
            for (int item = 0; item < jsonList.size(); item++) {
                jsonList.get(item).setMemory(jsonList.get(item).getMemory() / (1024 * 1024));
                jsonList.get(item).setTime(jsonList.get(item).getTime() / 1000000);
                if (Objects.equals(jsonList.get(item).getStatus(), "Accepted")) {
                    jsonList.get(item).setStatus("Finished");
                }
            }

            // 最后一步删除fileId
            List<HashMap<String, Object>> fileIdList = new ArrayList<>();
            HashMap<String, Object> fileIdInfo = new HashMap<>();
            fileIdInfo.put("fileId", fileId);
            fileIdList.add(fileIdInfo);

            response = HttpRequest.post("http://101.43.48.120:6048/delete")
                    .header("Content-Type", "application/json")  // 设置 Content-Type 为 application/json
                    .body(JSONUtil.toJsonStr(fileIdList))  // 将参数 Map 转换为 JSON 字符串
                    .execute();  // 执行请求

            responseBody = response.body();
            return jsonList;
        } else {
            // 再连续请求运行即可
            input_list.forEach((input)->{
                HashMap<String, Object> paramMap = new HashMap<>();
                paramMap.put("input", input);
                paramMap.put("code", source_code);
                paramMap.put("cpuLimit", time_used * 1000000000L);
                paramMap.put("memoryLimit", memory_used * 1024 * 1024);
                paramMap.put("language", language);

                mapList.add(paramMap);
            });

            HttpResponse response = HttpRequest.post("http://101.43.48.120:6048/")
                    .header("Content-Type", "application/json")  // 设置 Content-Type 为 application/json
                    .body(JSONUtil.toJsonStr(mapList))  // 将参数 Map 转换为 JSON 字符串
                    .execute();  // 执行请求

            // 处理响应
            String responseBody = response.body();

            // 创建 Gson 实例
            Gson gson = new Gson();

            // 定义泛型类型
            Type listType = new TypeToken<List<Judge>>() {}.getType();

            // 解析 JSON 数组
            List<Judge> jsonList = gson.fromJson(responseBody, listType);
            for (int item = 0; item < jsonList.size(); item++) {
                jsonList.get(item).setMemory(jsonList.get(item).getMemory() / (1024 * 1024));
                jsonList.get(item).setTime(jsonList.get(item).getTime() / 1000000);
                jsonList.get(item).setFileId(jsonList.get(item).getOutput());
                if (Objects.equals(jsonList.get(item).getStatus(), "Accepted")) {
                    jsonList.get(item).setStatus("Finished");
                }
            }
            return jsonList;
        }
    }

    @Override
    public Judge problemAlgorithmSubmit(JudgeRequest judgeRequest, Long uuid) {
        QueryWrapper<ProblemAlgorithmBank> queryWrapper = new QueryWrapper<>();
        ProblemAlgorithmBank problemAlgorithmBank;
        queryWrapper.eq("problem_id", judgeRequest.getProblem_id());
        queryWrapper.eq("is_delete", 0);
        problemAlgorithmBank = problemAlgorithmBankMapper.selectOne(queryWrapper);
        if (problemAlgorithmBank == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "题目不存在");
        }

        if (problemAlgorithmBank.getIs_delete() == 1) {
            if (judgeRequest.getCompetition_id() == null) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有这道题目的提交权限");
            }
        }

        QueryWrapper<ProblemAlgorithmLimit> problemAlgorithmLimitQueryWrapper = new QueryWrapper<>();
        problemAlgorithmLimitQueryWrapper.eq("problem_id", problemAlgorithmBank.getProblem_id());
        ProblemAlgorithmLimit problemAlgorithmLimit = problemAlgorithmLimitMapper.selectOne(problemAlgorithmLimitQueryWrapper);
        if (problemAlgorithmLimit == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "此题信息存在缺失，请联系总管理员8989561494@qq.com");
        }

        String language = judgeRequest.getLanguage();
        String source_code = judgeRequest.getSource_code();
//        String source_code = "#include <iostream>\n" +
//                "#include <algorithm>\n" +
//                "#include <cstring>\n" +
//                "#include <vector>\n" +
//                "#include <set>\n" +
//                "#include <map>\n" +
//                "#include <queue>\n" +
//                "\n" +
//                "using namespace std;\n" +
//                "\n" +
//                "int main()\n" +
//                "{\n" +
//                "    int a, b;\n" +
//                "    cin >> a >> b;\n" +
//                "    cout << a + b + 1 << endl;\n" +
//                "    return 0;\n" +
//                "}";
        long time_used = problemAlgorithmLimit.getCpu_limit() * 1000000000L;
        long memory_used = problemAlgorithmLimit.getMemory_limit() * 1024L * 1024L;
        long total_memory_used = 0L;
        long total_time_used = 0L;

        QueryWrapper<AlgorithmTestCase> algorithmTestCaseQueryWrapper = new QueryWrapper<>();
        algorithmTestCaseQueryWrapper.eq("problem_id", problemAlgorithmBank.getProblem_id());
        List<AlgorithmTestCase> algorithmTestCases = algorithmTestCaseMapper.selectList(algorithmTestCaseQueryWrapper);

        if (algorithmTestCases == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "对不起，这道题目的测试样例还没有添加，请即使联系管理员进行查询");
        }

        
        List<Integer> time_used_list = new ArrayList<>();
        List<Integer> memory_used_list = new ArrayList<>();
        List<String> result_list = new ArrayList<>();
        Judge lastJudge = new Judge();
        AtomicBoolean isCorrect = new AtomicBoolean(true);

        List<HashMap<String, Object>> fileList = new ArrayList<>();

        HttpResponse response;
        List<Judge> jsonList = new ArrayList<>();
        // 创建 Gson 实例
        Gson gson = new Gson();

        // 定义泛型类型
        Type listType = new TypeToken<List<Judge>>() {}.getType();
        // 文件句柄
        String fileId = null;

        if (!language.equals("python")) {
            HashMap<String, Object> paramMap = new HashMap<>();
            paramMap.put("language", language);
            paramMap.put("code", source_code);
            paramMap.put("input", algorithmTestCases.get(0).getInput());
            paramMap.put("cpuLimit", time_used * 3);
            fileList.add(paramMap);

            response = HttpRequest.post("http://101.43.48.120:6048/build")
                    .header("Content-Type", "application/json")
                    .body(JSONUtil.toJsonStr(fileList))
                    .execute();

            // 处理响应
            String responseBody = response.body();



            // 解析 JSON 数组
            jsonList = gson.fromJson(responseBody, listType);

            // 获取到句柄fileId
            if (Objects.equals(jsonList.get(0).getStatus(), "Accepted")) {
                fileId = jsonList.get(0).getFileId();
            } else {
                problemAlgorithmBank.setTest_total(problemAlgorithmBank.getTest_total() + 1);
                problemAlgorithmBankMapper.update(problemAlgorithmBank, queryWrapper);
                return jsonList.get(0);
            }

            //
            List<HashMap<String, Object>> mapList = new ArrayList<>();
            String finalLanguage = language;
            String finalFileId = fileId;
            algorithmTestCases.forEach((algorithmTestCase -> {
                HashMap<String, Object> Param = new HashMap<>();
                Param.put("input", algorithmTestCase.getInput());
                Param.put("cpuLimit", time_used);
                Param.put("memoryLimit", memory_used);
                Param.put("fileId", finalFileId);
                Param.put("language", finalLanguage);

                mapList.add(Param);
            }));
            // 开始正式运行代码
            response = HttpRequest.post("http://101.43.48.120:6048/exec")
                    .header("Content-Type", "application/json")
                    .body(JSONUtil.toJsonStr(mapList))
                    .execute();
        } else {
            // 再连续请求运行即可
            List<HashMap<String, Object>> mapList = new ArrayList<>();
            String finalLanguage1 = language;
            algorithmTestCases.forEach((algorithmTestCase -> {
                HashMap<String, Object> Param = new HashMap<>();
                Param.put("input", algorithmTestCase.getInput());
                Param.put("cpuLimit", time_used);
                Param.put("memoryLimit", memory_used);
                Param.put("language", finalLanguage1);
                Param.put("code", source_code);

                mapList.add(Param);
            }));

            response = HttpRequest.post("http://101.43.48.120:6048/")
                    .header("Content-Type", "application/json")  // 设置 Content-Type 为 application/json
                    .body(JSONUtil.toJsonStr(mapList))  // 将参数 Map 转换为 JSON 字符串
                    .execute();  // 执行请求
        }


        String responseBody = response.body();


        // 解析 JSON 数组
        jsonList = gson.fromJson(responseBody, listType);

        for (int item = 0; item < jsonList.size(); item++) {
            Judge judge = jsonList.get(item);
            String input = algorithmTestCases.get(item).getInput();
            String output = algorithmTestCases.get(item).getOutput().trim();

            // 处理各个报错信息以及总时间计算
            if (judge.getTime() != null) {
                total_time_used += judge.getTime();
                time_used_list.add(Math.toIntExact(judge.getTime() / 1000000));
            } else if (Objects.equals(judge.getStatus(), "Nonzero Exit Status")){
                total_time_used += 0;
                time_used_list.add(0);
            } else {
                total_time_used += time_used / 1000000;
                time_used_list.add((int) (time_used / 1000000));
            }

            // 处理各个报错信息以及内存计算
            if (judge.getMemory() != null){
                total_memory_used += judge.getMemory();
                memory_used_list.add(Math.toIntExact(judge.getMemory() / (1024 * 1024)));
                if (!Objects.equals(judge.getOutput().trim(), output.trim())){
                    result_list.add("Wrong Answer");
                } else {
                    // ！！！！！！！！！！！！！！！！！！
                    result_list.add("Accepted");
                }
            } else {
                total_memory_used = 0L;
                memory_used_list.add(0);
                result_list.add(judge.getStatus());
            }

            // 寻找最先报错信息
            if ((Objects.equals(judge.getStatus(), "Accepted") && !Objects.equals(judge.getOutput().trim(), output.trim())) && isCorrect.get()) {
                String currentOutput = judge.getOutput().trim();
                if (input.length() > 600) {
                    input = input.substring(0, 600) + "...";
                }
                if (currentOutput.length() > 600) {
                    currentOutput = currentOutput.substring(0, 600) + "...";
                }

                if (output.length() > 600) {
                    output = output.substring(0, 600) + "...";
                }
                lastJudge.setInput(input);
                lastJudge.setOutput(currentOutput);
                lastJudge.setCorrectOutput(output);
                lastJudge.setStatus("Wrong Answer");
                isCorrect.set(false);
            }
            else if ((Objects.equals(judge.getStatus(), "Nonzero Exit Status") && isCorrect.get())) {
                lastJudge.setStatus("Nonzero Exit Status");
                lastJudge.setInput(input);
                lastJudge.setOutput(judge.getOutput());
                isCorrect.set(false);
            } else if (!Objects.equals(judge.getStatus(), "Accepted") && isCorrect.get()){
                String currentOutput = judge.getOutput();

                if (Objects.equals(judge.getStatus(), "Memory Limit Exceeded")) {
                    lastJudge.setInput(input);
                    lastJudge.setOutput(currentOutput);
                    lastJudge.setTime(0L);
                    lastJudge.setMemory(memory_used / (1024 * 1024));
                } else if (Objects.equals(judge.getStatus(), "Time Limit Exceeded")) {
                    lastJudge.setInput(input);
                    lastJudge.setOutput(currentOutput);
                    lastJudge.setTime(time_used / 1000000);
                    lastJudge.setMemory(0L);
                } else {
                    lastJudge.setTime(0L);
                    lastJudge.setMemory(0L);
                }

                lastJudge.setStatus(judge.getStatus());
                isCorrect.set(false);
            }
        }
        // 更换语言格式
        if (Objects.equals(language, "cpp")) {
            language = "C++";
        } else if (Objects.equals(language, "c")) {
            language = "C";
        } else if (Objects.equals(language, "java")) {
            language = "Java";
        } else if (Objects.equals(language, "python")) {
            language = "Python";
        }
        // 插入提交记录
        SubmissionsAlgorithm submissionsAlgorithm = new SubmissionsAlgorithm();
        SubmissionAlgorithmDetails submissionAlgorithmDetails = new SubmissionAlgorithmDetails();

        submissionsAlgorithm.setProblem_id(problemAlgorithmBank.getProblem_id());
        submissionsAlgorithm.setSubmit_time(new Date());
        submissionsAlgorithm.setLanguages(language);
        submissionsAlgorithm.setUuid(uuid);
        submissionsAlgorithm.setCode_length(source_code.length());
        submissionsAlgorithm.setSource_code(source_code);


        // 如果可以到这一步说明当前用户已登录 + 已参加比赛
        if (judgeRequest.getCompetition_id() != null) {
            submissionsAlgorithm.setCompetition_id(judgeRequest.getCompetition_id());
        }


        // 只要提交了，那么总的尝试次数就得 + 1
        problemAlgorithmBank.setTest_total(problemAlgorithmBank.getTest_total() + 1);

        // 指定当前信息
        if (isCorrect.get()) {
            QueryWrapper<AcAlgorithmProblem> acAlgorithmProblemQueryWrapper = new QueryWrapper<>();
            acAlgorithmProblemQueryWrapper.eq("user_id", uuid);
            acAlgorithmProblemQueryWrapper.eq("problem_id", problemAlgorithmBank.getProblem_id());
            AcAlgorithmProblem acAlgorithmProblem = acAlgorithmProblemMapper.selectOne(acAlgorithmProblemQueryWrapper);
            if (acAlgorithmProblem == null) {
                acAlgorithmProblem = new AcAlgorithmProblem();
                acAlgorithmProblem.setProblem_id(problemAlgorithmBank.getProblem_id());
                acAlgorithmProblem.setCreate_time(new Date());
                acAlgorithmProblem.setDifficulty_name(problemAlgorithmBank.getDifficulty_name());
                acAlgorithmProblem.setStatus(1);
                acAlgorithmProblem.setUser_id(uuid);
                acAlgorithmProblemMapper.insert(acAlgorithmProblem);

            } else if (acAlgorithmProblem.getStatus() != 1) {
                acAlgorithmProblem.setStatus(1);
                if (acAlgorithmProblem.getDifficulty_name() == null) {
                    acAlgorithmProblem.setDifficulty_name(problemAlgorithmBank.getDifficulty_name());
                }
                acAlgorithmProblemMapper.update(acAlgorithmProblem,acAlgorithmProblemQueryWrapper);
            }

            lastJudge.setStatus("Accepted");
            submissionsAlgorithm.setResults("Accepted");
            problemAlgorithmBank.setAc_total(problemAlgorithmBank.getAc_total() + 1);
        } else {
            QueryWrapper<AcAlgorithmProblem> acAlgorithmProblemQueryWrapper = new QueryWrapper<>();
            acAlgorithmProblemQueryWrapper.eq("user_id", uuid);
            acAlgorithmProblemQueryWrapper.eq("problem_id", problemAlgorithmBank.getProblem_id());
            AcAlgorithmProblem acAlgorithmProblem = acAlgorithmProblemMapper.selectOne(acAlgorithmProblemQueryWrapper);

            // 观察当前时间和竞赛结束时间判断是否进入排行榜显示
            if (acAlgorithmProblem == null) {
                acAlgorithmProblem = new AcAlgorithmProblem();
                acAlgorithmProblem.setProblem_id(problemAlgorithmBank.getProblem_id());
                acAlgorithmProblem.setCreate_time(new Date());
                acAlgorithmProblem.setStatus(0);
                acAlgorithmProblem.setUser_id(uuid);
                acAlgorithmProblem.setDifficulty_name(problemAlgorithmBank.getDifficulty_name());

                acAlgorithmProblemMapper.insert(acAlgorithmProblem);
            } else if (acAlgorithmProblem.getStatus() != 1) {
                acAlgorithmProblem.setStatus(2);

                acAlgorithmProblemMapper.update(acAlgorithmProblem,acAlgorithmProblemQueryWrapper);

            }

            if (!Objects.equals(lastJudge.getStatus(), "Nonzero Exit Status")) {
                submissionsAlgorithm.setResults(lastJudge.getStatus());
            } else {
                submissionsAlgorithm.setResults("Compile Error");
            }
        }

        // 将题目信息进行更新
        problemAlgorithmBankMapper.update(problemAlgorithmBank, queryWrapper);
        submissionsAlgorithmMapper.insert(submissionsAlgorithm);
        Long submission_id = submissionsAlgorithm.getSubmission_id();

        // 插入细节信息
        submissionAlgorithmDetails.setSubmission_id(submission_id);
        submissionAlgorithmDetails.setMemory_used(total_memory_used / (1024 * 1024));
        submissionAlgorithmDetails.setTime_used((int) (total_time_used / 1000000));

        submissionAlgorithmDetailsMapper.insert(submissionAlgorithmDetails);
        // 将所有的小记录全部插入到 records 表中
        for (int item = 0; item < time_used_list.size(); item++) {
            SubmissionAlgorithmRecords submissionAlgorithmRecords = new SubmissionAlgorithmRecords();
            submissionAlgorithmRecords.setSubmission_id(submission_id);
            submissionAlgorithmRecords.setTime_used(time_used_list.get(item));
            submissionAlgorithmRecords.setMemory_used(memory_used_list.get(item));
            submissionAlgorithmRecords.setResult(result_list.get(item));
            submissionAlgorithmRecords.setCreate_time(new Date());

            submissionAlgorithmRecordsMapper.insert(submissionAlgorithmRecords);
        }

        // 最后一步删除fileId
        if (!language.equals("python")) {
            List<HashMap<String, Object>> fileIdList = new ArrayList<>();
            HashMap<String, Object> fileIdInfo = new HashMap<>();
            fileIdInfo.put("fileId", fileId);
            fileIdList.add(fileIdInfo);

            response = HttpRequest.post("http://101.43.48.120:6048/delete")
                    .header("Content-Type", "application/json")  // 设置 Content-Type 为 application/json
                    .body(JSONUtil.toJsonStr(fileIdList))  // 将参数 Map 转换为 JSON 字符串
                    .execute();  // 执行请求
        }

        return lastJudge;
    }

    private ProblemAlgorithmBank getProblemAlgorithmBank(Long problem_id, int is_delete) {
        QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
        problemAlgorithmBankQueryWrapper.eq("problem_id", problem_id);
        if (is_delete == 0) {
            problemAlgorithmBankQueryWrapper.eq("is_delete", 0);
        }
        return problemAlgorithmBankMapper.selectOne(problemAlgorithmBankQueryWrapper);
    }

    /**
     * 获取题目包含算法标签
     *
     * @param problem_id 问题ID
     * @return 题目包含算法标签
     */
    private List<String> getProblemAlgorithmTags(Long problem_id, int status) {
        QueryWrapper<ProblemAlgorithmTags> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);
        if (status == 0) {
            queryWrapper.eq("is_delete", 0);
        }
        List<ProblemAlgorithmTags> tagsList = problemAlgorithmTagsMapper.selectList(queryWrapper);

        List<String> problemAlgorithmTags = new ArrayList<>();
        for (int item = 0; item < tagsList.size(); item++) {
            problemAlgorithmTags.add(getProblemAlgorithmTagsByTagId(tagsList.get(item).getTag_id()));
        }

        return problemAlgorithmTags;
    }

    /**
     * 获取标签名称
     *
     * @param tag_id 算法标签id
     * @return 寻找id对应算法名称
     */
    private String getProblemAlgorithmTagsByTagId(Integer tag_id) {
        QueryWrapper<ProblemAlgorithmTagsRelation> problemAlgorithmTagsRelationQueryWrapper = new QueryWrapper<>();
        problemAlgorithmTagsRelationQueryWrapper.eq("tag_id", tag_id);
        return problemAlgorithmTagsRelationMapper.selectOne(problemAlgorithmTagsRelationQueryWrapper).getTag_name();
    }

    /**
     * 脱敏加工后的题目信息
     *
     * @param problemAlgorithmBank 脱敏前的题目信息
     * @param uuid                 用户id
     * @param problemAlgorithmTags 题目对应算法标签
     * @return 脱敏加工后的题目信息
     */
    private ProblemAlgorithmBankVo getProblemAlgorithmVO(ProblemAlgorithmBank problemAlgorithmBank, Long uuid, List<String> problemAlgorithmTags) {
        ProblemAlgorithmBankVo problemAlgorithmBankVo = new ProblemAlgorithmBankVo();
        problemAlgorithmBankVo.setProblem_id(problemAlgorithmBank.getProblem_id());
        problemAlgorithmBankVo.setShort_name(problemAlgorithmBank.getShort_name());
        problemAlgorithmBankVo.setChinese_name(problemAlgorithmBank.getChinese_name());
        problemAlgorithmBankVo.setEnglish_name(problemAlgorithmBank.getEnglish_name());
        problemAlgorithmBankVo.setDifficulty_name(problemAlgorithmBank.getDifficulty_name());
        problemAlgorithmBankVo.setSource(problemAlgorithmBank.getSource_name());
        problemAlgorithmBankVo.setAlgorithm_tags(problemAlgorithmTags);
        problemAlgorithmBankVo.setTest_total(problemAlgorithmBank.getTest_total());
        problemAlgorithmBankVo.setAc_total(problemAlgorithmBank.getAc_total());
        problemAlgorithmBankVo.setUrl(problemAlgorithmBank.getUrl());

        QueryWrapper<ProblemAlgorithmLimit> problemAlgorithmLimitQueryWrapper = new QueryWrapper<>();
        problemAlgorithmLimitQueryWrapper.eq("problem_id", problemAlgorithmBank.getProblem_id());
        problemAlgorithmLimitQueryWrapper.eq("is_delete", problemAlgorithmBank.getIs_delete());
        ProblemAlgorithmLimit problemAlgorithmLimit = problemAlgorithmLimitMapper.selectOne(problemAlgorithmLimitQueryWrapper);
        if (problemAlgorithmLimit != null) {
            problemAlgorithmBankVo.setMemory_limit(problemAlgorithmLimit.getMemory_limit());
            problemAlgorithmBankVo.setCpu_limit(problemAlgorithmLimit.getCpu_limit());
        }


        QueryWrapper<AcAlgorithmProblem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problemAlgorithmBank.getProblem_id());

        if (!(uuid == null || uuid.equals(-1))) {
            queryWrapper.eq("user_id", uuid);
            AcAlgorithmProblem acAlgorithmProblem = acAlgorithmProblemMapper.selectOne(queryWrapper);
            if (acAlgorithmProblem != null) {
                problemAlgorithmBankVo.setStatus(acAlgorithmProblem.getStatus());
            }
        }

        return problemAlgorithmBankVo;
    }

}
