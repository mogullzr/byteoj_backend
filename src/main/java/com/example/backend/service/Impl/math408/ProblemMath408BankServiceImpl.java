package com.example.backend.service.Impl.math408;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.AcAlgorithmProblem;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmLimit;
import com.example.backend.models.domain.math408.*;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.math408.ProblemRequest;
import com.example.backend.models.request.problem.Math408QueryRequest;
import com.example.backend.models.request.problem.ProblemExamEditRequest;
import com.example.backend.models.request.problem.ProblemExamProblemInfo;
import com.example.backend.models.request.problem.ProblemExamRequest;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemExamVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.models.vo.problem.ProblemSimilarityVo;
import com.example.backend.service.math408.ProblemExamTissueService;
import com.example.backend.service.math408.ProblemMath408BankService;
import com.example.backend.service.math408.ProblemMath408TagsService;
import com.example.backend.service.math408.ProblemSimilarityService;
import com.example.backend.service.user.UserService;
import com.example.backend.utils.EmbeddingConvertUtil;
import com.example.backend.models.domain.usage.UsagePlans;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.SQLException;
import java.util.*;
import java.util.stream.Collectors;

/**
* @author Mogullzr
* @description 针对表【problem_math408_bank(math题目基本信息表)】的数据库操作Service实现
* @createDate 2026-01-25 20:23:07
*/
@Service
public class ProblemMath408BankServiceImpl extends ServiceImpl<ProblemMath408BankMapper, ProblemMath408Bank>
    implements ProblemMath408BankService {
    @Resource
    private ProblemMath408BankMapper problemMath408BankMapper;

    @Resource
    private ProblemMath408TagsMapper problemMath408TagsMapper;

    @Resource
    private ProblemMath408TagsRelationMapper problemMath408TagsRelationMapper;

    @Resource
    private ProblemMath408TagsService problemMath408TagsService;

    @Resource
    private ProblemExamMapper problemExamMapper;

    @Resource
    private ProblemExamTissueMapper problemExamTissueMapper;

    @Resource
    private ProblemAlgorithmLimitMapper problemAlgorithmLimitMapper;

    @Resource
    private ProblemSimilarityMapper problemSimilarityMapper;

    @Resource
    private UsagePlansMapper usagePlansMapper;

    @Resource
    private ProblemExamTissueService problemExamTissueService;

    @Resource
    private UserService userService;

    @Resource
    private ProblemSimilarityService problemSimilarityService;

    @Resource
    private EmbeddingConvertUtil embeddingConvertUtil;

    @Resource
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private ProblemAlgorithmBankMapper problemAlgorithmBankMapper;

    @Override
    public List<ProblemMath408BankVo> problemSearch(Math408QueryRequest math408QueryRequest, boolean isAdmin) {
        String keyword = math408QueryRequest.getKeyword();
        String difficulty = math408QueryRequest.getDifficulty();
        Integer status = math408QueryRequest.getStatus();
        Integer pageNum = math408QueryRequest.getPageNum();
        Integer pageSize = math408QueryRequest.getPageSize();
        List<String> sourceList = math408QueryRequest.getSourceList();
        List<Integer> tagsList = math408QueryRequest.getTagsList();

        Page<ProblemMath408Bank> page = new Page<>(pageNum, pageSize);
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();

        // 1.关键词查询
        if (keyword != null && !keyword.isEmpty()) {
            problemMath408BankQueryWrapper.like("problem_name", keyword);
        }

        // 2.难度
        if (difficulty != null && !difficulty.isEmpty()) {
            problemMath408BankQueryWrapper.eq("difficulty_name", difficulty);
        }

        // 3.题目类型
        if (status != null) {
            problemMath408BankQueryWrapper.eq("status", status);
        }

        // 4.来源查询
        if (sourceList != null && !sourceList.isEmpty()) {
            problemMath408BankQueryWrapper.and(wrapper -> {
                for (String source : sourceList) {
                    wrapper.or().like("source_name", source);
                }
            });
        }

        // 5.标签查询：使用 JOIN 合并查询
        if (tagsList != null && !tagsList.isEmpty()) {
            String tagsCondition = tagsList.stream()
                    .map(String::valueOf)
                    .collect(Collectors.joining(","));

            // 构建子查询，将符合标签条件的 problem_id 筛选出来
            problemMath408BankQueryWrapper.inSql("problem_id",
                    "SELECT DISTINCT problem_id FROM problem_math408_tags WHERE tag_id IN (" + tagsCondition + ")"
            );
        }

        // 6.普通用户进行逻辑删除排除
        if (!isAdmin) {
            problemMath408BankQueryWrapper.eq("is_delete", 0);
        }

        // 开始进行分页查询
        Page<ProblemMath408Bank> problemMath408BankPage = problemMath408BankMapper.selectPage(page, problemMath408BankQueryWrapper);
        List<ProblemMath408Bank> problemMath408BankList = problemMath408BankPage.getRecords();
        Long pages = problemMath408BankPage.getPages();

        // 获取所有问题的 ID 用于批量查询标签
        List<Long> problemIds = problemMath408BankList.stream()
                .map(ProblemMath408Bank::getProblem_id)
                .collect(Collectors.toList());

        // 批量查询所有问题的标签名称
        Map<Long, List<String>> problemMath408TagsWithNames = getProblemMath408TagsWithNames(problemIds);

        List<ProblemMath408BankVo> math408BankVos = new ArrayList<>();
        boolean flag = false;
        // 设置题目VO信息
        for (ProblemMath408Bank problemMath408Bank : problemMath408BankList) {
            List<String> problemMath408Tags = problemMath408TagsWithNames.get(problemMath408Bank.getProblem_id());
            ProblemMath408BankVo problemMath408BankVo = getProbleMath408mVO(problemMath408Bank, problemMath408Tags);
//            problemMath408BankVo.setDescription(null);
//            problemMath408BankVo.setAnalysis(null);
//            problemMath408BankVo.setCorrect_answer(null);
            if (!flag) {
                flag = true;
                problemMath408BankVo.setPages(pages);
            }
            math408BankVos.add(problemMath408BankVo);
        }
        return math408BankVos;
    }

    @Override
    public ProblemMath408BankVo problemSearchByProblemId(Long problemId) {
        QueryWrapper<ProblemMath408Bank> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problemId);

        ProblemMath408Bank problemMath408Bank = problemMath408BankMapper.selectOne(queryWrapper);
        if (problemMath408Bank == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "题目不存在");
        }
        ProblemMath408BankVo problemMath408BankVo = new ProblemMath408BankVo();
        List<String> tagsList = getProblemMath408Tags(problemId);

        // TODO 待定..........
        problemMath408BankVo = getProbleMath408mVO(problemMath408Bank, tagsList);
        problemMath408BankVo.setStatus(problemMath408Bank.getStatus());
//        problemMath408BankVo.setCorrect_answer(null);

        return problemMath408BankVo;
    }

    @Override
    public Boolean problemUpdate(ProblemRequest problemRequest, Long uuid, String account) {
        Integer optionType = problemRequest.getOption_type();
        String problemName = problemRequest.getProblem_name();
        Long problemId = problemRequest.getProblem_id();
        String options = problemRequest.getOptions();
        String sourceName = problemRequest.getSource_name();
        String difficultyName = problemRequest.getDifficulty_name();
        Integer status = problemRequest.getStatus();
        String description = problemRequest.getDescription();
        String analysis = problemRequest.getAnalysis();
        String correctAnswers = problemRequest.getCorrectAnswers();

        List<Long> tagList = problemRequest.getTagsList();

        QueryWrapper<ProblemMath408Bank> queryWrapper = new QueryWrapper<>();
        boolean flag = true;
        queryWrapper.eq("problem_id", problemId);
        ProblemMath408Bank problemMath408Bank = problemMath408BankMapper.selectOne(queryWrapper);

        if (problemMath408Bank == null) {
            problemMath408Bank = new ProblemMath408Bank();
            flag = false;
        }
        // 更新数据

        problemMath408Bank.setProblem_id(problemId);
        problemMath408Bank.setProblem_name(problemName);
        problemMath408Bank.setOption_type(optionType);
        problemMath408Bank.setStatus(status);

        problemMath408Bank.setDifficulty_name(difficultyName);
        problemMath408Bank.setAnalysis(analysis);
        problemMath408Bank.setDescription(description);
        problemMath408Bank.setOptions(options);
        problemMath408Bank.setSource_name(sourceName);
        problemMath408Bank.setCorrect_answer(correctAnswers);

        problemMath408Bank.setCreate_by_id(uuid);
        problemMath408Bank.setCreate_time(new Date());

        problemMath408Bank.setUpdate_by_id(uuid);
        problemMath408Bank.setUpdate_time(new Date());

        // 更新数据
        if (flag) {
            problemMath408Bank.setUpdate_by_name(account);
            problemMath408BankMapper.updateById(problemMath408Bank);
        } else {
            problemMath408Bank.setCreate_by_name(account);
            problemMath408BankMapper.insert(problemMath408Bank);
        }


        // 插标签（先删再插）
        QueryWrapper<ProblemMath408Tags> queryWrapperTags = new QueryWrapper<>();
        queryWrapperTags.eq("problem_id", problemId);
        problemMath408TagsMapper.delete(queryWrapperTags);

        List<ProblemMath408Tags> problemMath408TagsList = new ArrayList<>();
        for (Long aLong : tagList) {
            ProblemMath408Tags problemMath408Tags = new ProblemMath408Tags();
            problemMath408Tags.setProblem_id(problemId);
            problemMath408Tags.setTag_id(aLong);

            problemMath408TagsList.add(problemMath408Tags);
        }

        // 最后，重新设置向量数据信息
        List<Long> problem_id_list = new ArrayList<>();
        problem_id_list.add(problemId);

        return problemMath408TagsService.saveBatch(problemMath408TagsList) && embeddingConvertUtil.InsertEmbedding(problem_id_list);
    }

    @Override
    public List<ProblemExamVo> problemExamSearch(ProblemExamRequest problemExamRequest) {
        String source = problemExamRequest.getSource();
        Page<ProblemExam> page = new Page<>(problemExamRequest.getPageNum(), 9);
        QueryWrapper<ProblemExam> queryWrapper = new QueryWrapper<>();

        if (source == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "必要参数不允许为空");
        }

        if (!source.isEmpty()) {
            queryWrapper.like("exam_name", source);
        }

        Page<ProblemExam> pageInfo = problemExamMapper.selectPage(page, queryWrapper);
        List<ProblemExam> problemExams = pageInfo.getRecords();
        List<ProblemExamVo> problemExamVos = new ArrayList<>();

        Long pages = pageInfo.getTotal();
        final boolean[] flag = {true};
        problemExams.forEach(problemExam -> {
            ProblemExamVo problemExamVo = new ProblemExamVo();
            problemExamVo.setExam_id(problemExam.getId());
            problemExamVo.setExam_name(problemExam.getExam_name());
            problemExamVo.setPicture(problemExam.getPicture());
            problemExamVo.setAuthor(problemExam.getAuthor());
            problemExamVo.setStart_time(problemExam.getStart_time());
            problemExamVo.setEnd_time(problemExam.getEnd_time());
            problemExamVo.setTime(problemExam.getTime());
            problemExamVo.setStatus(problemExam.getStatus());
            problemExamVo.setJoins(problemExam.getJoins());

            if (flag[0]) {
                flag[0] = false;
                problemExamVo.setPages(pages);
            }
            problemExamVos.add(problemExamVo);
        });
        return problemExamVos;
    }

    @Override
    public ProblemExamVo problemSearchExamId(Long examId) {
        QueryWrapper<ProblemExam> problemExamQueryWrapper = new QueryWrapper<>();
        ProblemExamVo problemExamVo = new ProblemExamVo();

        problemExamQueryWrapper.eq("id", examId);

        ProblemExam problemExam = problemExamMapper.selectOne(problemExamQueryWrapper);
        problemExamVo.setExam_id(examId);
        problemExamVo.setExam_name(problemExam.getExam_name());
        problemExamVo.setStart_time(problemExam.getStart_time());
        problemExamVo.setEnd_time(problemExam.getEnd_time());
        problemExamVo.setTime(problemExam.getTime());
        problemExamVo.setAuthor(problemExam.getAuthor());
        problemExamVo.setPicture(problemExam.getPicture());
        problemExamVo.setStatus(problemExam.getStatus());
        problemExamVo.setJoins(problemExam.getJoins());
        return problemExamVo;
    }

    @Override
    public List<ProblemMath408BankVo> problemExamSearchDetail(Long examId) {
        QueryWrapper<ProblemExamTissue> problemExamTissueQueryWrapper = new QueryWrapper<>();
        problemExamTissueQueryWrapper.eq("exam_id", examId);

        List<ProblemExamTissue> problemExamTissues = problemExamTissueMapper.selectList(problemExamTissueQueryWrapper);

        // 脱敏处理
        List<ProblemMath408BankVo> problemMath408BankVos = new ArrayList<>();
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();
        QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
        List<Long> AlgorithmProblemIds = new ArrayList<>();
        List<Long> Math408ProblemIds = new ArrayList<>();

        problemExamTissues.forEach(problemExamTissue -> {
            Long problem_id = problemExamTissue.getProblem_id();
            Integer status = problemExamTissue.getStatus();

            // 开始查询条件组合
            if (status.equals(3)) {
                problemAlgorithmBankQueryWrapper.eq("problem_id", problem_id).or();
                AlgorithmProblemIds.add(problem_id);
            } else {
                problemMath408BankQueryWrapper.eq("problem_id", problem_id).or();
                Math408ProblemIds.add(problem_id);
            }
        });

        List<ProblemAlgorithmBank> problemAlgorithmBankList = problemAlgorithmBankMapper.selectList(problemAlgorithmBankQueryWrapper);
        List<ProblemMath408Bank> problemMath408BankList = problemMath408BankMapper.selectList(problemMath408BankQueryWrapper);

        // 标签获取
        Map<Long, List<String>> problemAlgorithmTagsMap = getProblemAlgorithmTagsWithNames(AlgorithmProblemIds);
        Map<Long, List<String>> problemMath408TagsWithNames = getProblemMath408TagsWithNames(Math408ProblemIds);

        List<ProblemAlgorithmBankVo> problemAlgorithmVoList = getAlgorithmProblem(problemAlgorithmBankList, problemAlgorithmTagsMap);
        List<ProblemMath408BankVo> problemMath408BankVoList = getProblemMath408(problemMath408BankList, problemMath408TagsWithNames);

        // 设置考试试题详细信息
        problemExamTissues.forEach(problemExamTissue -> {
            Long problem_id = problemExamTissue.getProblem_id();
            Integer status = problemExamTissue.getStatus();
            ProblemMath408BankVo problemMath408BankVo = new ProblemMath408BankVo();
            problemMath408BankVo.setProblem_id(problem_id);
            problemMath408BankVo.setScore(problemExamTissue.getScore());
            problemMath408BankVo.setStatus(status);

            // 开始查询条件组合
            if (status.equals(3)) {
                ProblemAlgorithmBankVo problemAlgorithmBankVo = problemAlgorithmVoList.stream()
                        .filter(vo -> problem_id.equals(vo.getProblem_id()))
                        .findFirst() // 返回 Optional<ProblemAlgorithmBankVo>
                        .orElse(null); // 如果没找到，返回 null（或抛异常、设默认值等）

                assert problemAlgorithmBankVo != null;
                problemMath408BankVo.setProblem_name(problemAlgorithmBankVo.getChinese_name());
                problemMath408BankVo.setDescription(problemAlgorithmBankVo.getDescription());
                problemMath408BankVo.setSource_name(problemAlgorithmBankVo.getSource());
                problemMath408BankVo.setTagsList(problemAlgorithmBankVo.getAlgorithm_tags());
            } else {
                ProblemMath408BankVo math408BankVo = problemMath408BankVoList.stream()
                        .filter(vo -> problem_id.equals(vo.getProblem_id()))
                        .findFirst()
                        .orElse(null);
                assert math408BankVo != null;
                problemMath408BankVo.setProblem_name(math408BankVo.getProblem_name());
                problemMath408BankVo.setDescription(math408BankVo.getDescription());
                problemMath408BankVo.setSource_name(math408BankVo.getSource_name());
                problemMath408BankVo.setTagsList(math408BankVo.getTagsList());
                problemMath408BankVo.setOptions(math408BankVo.getOptions());
                problemMath408BankVo.setOption_type(math408BankVo.getOption_type());
            }

            problemMath408BankVos.add(problemMath408BankVo);
        });

        return problemMath408BankVos;
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

    @Override
    public Boolean problemExamEdit(ProblemExamEditRequest problemExamEditRequest, User user) {
        Long startDate = problemExamEditRequest.getStart_date();
        Long endDate = problemExamEditRequest.getEnd_date();
        String picture = problemExamEditRequest.getPicture();
        String password = problemExamEditRequest.getPassword();
        String examName = problemExamEditRequest.getExam_name();
        Long examId = problemExamEditRequest.getExam_id();
        Integer time = problemExamEditRequest.getTime();
        Integer status = problemExamEditRequest.getStatus();
        List<ProblemExamProblemInfo> problemExamProblemInfos = problemExamEditRequest.getProblemExamProblemInfos();

        QueryWrapper<ProblemExam> problemExamQueryWrapper = new QueryWrapper<>();
        ProblemExam problemExam = new ProblemExam();

        problemExamProblemInfos.forEach(problemExamProblemInfo -> {
            if (problemExamProblemInfo.getProblem_id() == null || problemExamProblemInfo.getProblem_id() == 0 || problemExamProblemInfo.getStatus() == null) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数错误");
            }
        });

        if (examName == null || examName.isEmpty()) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "参数错误");
        }
        boolean isNew = true;
        if (examId != null) {
            problemExamQueryWrapper.eq("id", examId);
            problemExam = problemExamMapper.selectOne(problemExamQueryWrapper);
            if (problemExam == null) {
                throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的考试");
            }
            isNew = false;
        }

        problemExam.setAuthor(user.getUsername());
        problemExam.setExam_name(examName);
        problemExam.setPicture(picture);
        problemExam.setPassword(password);
        problemExam.setTime(time);
        problemExam.setStatus(status);
        problemExam.setUpdate_time(new Date());
        if (startDate != null && endDate != null) {
            problemExam.setStart_time(new Date(startDate));
            problemExam.setEnd_time(new Date(endDate));
        }

        if (isNew) {
            problemExamMapper.insert(problemExam);
        } else {
            problemExamMapper.updateById(problemExam);
        }


        // 插题目信息(先删后加)
        QueryWrapper<ProblemExamTissue> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("exam_id", problemExam.getId());
        problemExamTissueMapper.delete(queryWrapper);

        List<ProblemExamTissue> problemExamTissues = new ArrayList<>();
        ProblemExam finalProblemExam = problemExam;
        problemExamProblemInfos.forEach(problemExamProblemInfo -> {
            ProblemExamTissue problemExamTissue = new ProblemExamTissue();
            problemExamTissue.setProblem_id(problemExamProblemInfo.getProblem_id());
            problemExamTissue.setExam_id(finalProblemExam.getId());
            problemExamTissue.setScore(problemExamProblemInfo.getScore());
            problemExamTissue.setStatus(problemExamProblemInfo.getStatus());

            problemExamTissues.add(problemExamTissue);
        });

        problemExamTissueService.saveBatch(problemExamTissues);
        return true;
    }

    @Override
    public List<ProblemSimilarityVo> problemSearchSimilarity(List<Long> problemIdList, Long uuid) {
        // 1. 参数校验
        if (problemIdList == null || problemIdList.isEmpty() || problemIdList.size() > 10) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数错误，每次最多查询10题");
        }

        // 2.查看次数是否够用
        QueryWrapper<UsagePlans> usagePlansQueryWrapper = new QueryWrapper<>();
        usagePlansQueryWrapper.eq("uuid", uuid);
        usagePlansQueryWrapper.eq("feature_code", "SIMILAR");
        UsagePlans usagePlans = usagePlansMapper.selectOne(usagePlansQueryWrapper);
        if (usagePlans == null || usagePlans.getMax_count() < problemIdList.size()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "对不起，您已经没有使用次数了");
        }
        // ---------------------------------------------------------
        // 第一步：获取完整的相似度关系数据 (复用之前的优化逻辑)
        // ---------------------------------------------------------

        // 1.1 批量查询已有的缓存
        List<ProblemSimilarity> existingList = problemSimilarityMapper.selectList(
                Wrappers.<ProblemSimilarity>lambdaQuery()
                        .in(ProblemSimilarity::getProblem_id, problemIdList)
                        .orderByAsc(ProblemSimilarity::getRank) // 确保按排名排序
        );

        // 1.2 分组已有数据，判断哪些题目缺数据
        Map<Long, List<ProblemSimilarity>> existingMap = existingList.stream()
                .collect(Collectors.groupingBy(ProblemSimilarity::getProblem_id));

        List<ProblemSimilarity> allSimilarityRecords = new ArrayList<>(existingList);
        List<ProblemSimilarity> toInsertList = new ArrayList<>();

        // 1.3 补缺：对没有缓存的题目进行向量搜索
        for (Long pid : problemIdList) {
            List<ProblemSimilarity> cached = existingMap.get(pid);
            if (cached == null || cached.isEmpty()) {
                try {
                    // 调用向量搜索，获取相似的ID列表
                    List<Long> similarIds = embeddingConvertUtil.EmbeddingSearch(pid);

                    // 构建待插入对象
                    for (int i = 0; i < similarIds.size(); i++) {
                        ProblemSimilarity ps = new ProblemSimilarity();
                        ps.setProblem_id(pid);
                        ps.setProblem_id_similarity(similarIds.get(i));
                        ps.setRank(i + 1);
                        toInsertList.add(ps);

                        // 同时也加入内存总列表，方便后续直接处理
                        allSimilarityRecords.add(ps);
                    }
                } catch (SQLException e) {
                    throw new RuntimeException("向量搜索失败: " + pid, e);
                }
            }
        }

        // 1.4 批量插入新产生的数据
        if (!toInsertList.isEmpty()) {
            problemSimilarityService.saveBatch(toInsertList);
        }

        // ---------------------------------------------------------
        // 第二步：重组数据为 Vo 结构 (核心修改部分)
        // ---------------------------------------------------------

        // 2.1 将所有的相似度记录按 "主题目ID" 分组
        // Key: problem_id_main (前端传的ID), Value: 该主题目对应的所有相似记录列表
        Map<Long, List<ProblemSimilarity>> groupedByMain = allSimilarityRecords.stream()
                .collect(Collectors.groupingBy(ProblemSimilarity::getProblem_id));

        List<ProblemSimilarityVo> resultVoList = new ArrayList<>();

        // 2.2 遍历前端传入的每一个 problemId，构建 Vo
        for (Long mainPid : problemIdList) {
            List<ProblemSimilarity> simRecords = groupedByMain.get(mainPid);

            // 理论上经过上面的补缺逻辑，这里一定不为空，但为了安全做个判断
            if (simRecords == null || simRecords.isEmpty()) {
                // 如果连向量搜索都没返回结果（极端情况），则返回空列表
                ProblemSimilarityVo vo = new ProblemSimilarityVo();
                vo.setProblem_id(mainPid);
                vo.setTop5_similarity(new ArrayList<>());
                resultVoList.add(vo);
                continue;
            }

            // 按 Rank 排序，确保取前5个是准确的
            simRecords.sort(Comparator.comparingInt(ProblemSimilarity::getRank));

            // 提取前5个相似题目的 ID (假设数据库里存了多于5个，或者只存了5个)
            List<Long> targetSimilarIds = simRecords.stream()
                    .limit(6)
                    .map(ProblemSimilarity::getProblem_id_similarity)
                    .collect(Collectors.toList());

            // 2.3 【关键优化】批量查询相似题目的详情 (ProblemMath408BankVo)
            // 避免在循环中调用 problemSearchByProblemId (那是单次查库)，改为一次性查出所有
            List<ProblemMath408BankVo> similarVos = batchGetProblemVoList(targetSimilarIds);

            // 2.4 组装最终 Vo
            ProblemSimilarityVo vo = new ProblemSimilarityVo();
            vo.setProblem_id(mainPid);
            vo.setTop5_similarity(similarVos);

            resultVoList.add(vo);
        }

        // 最后，减去次数然后重新更新数据
        usagePlans.setMax_count(usagePlans.getMax_count() - problemIdList.size());
        usagePlansMapper.updateById(usagePlans);

        return resultVoList;
    }


    /**
     * 辅助方法：批量获取题目详情 Vo
     * 避免 N+1 查询问题
     */
    private List<ProblemMath408BankVo> batchGetProblemVoList(List<Long> problemIds) {
        if (problemIds == null || problemIds.isEmpty()) {
            return new ArrayList<>();
        }

        // 1. 批量查询数据库实体
        List<ProblemMath408Bank> bankList = problemMath408BankMapper.selectList(
                Wrappers.<ProblemMath408Bank>lambdaQuery()
                        .in(ProblemMath408Bank::getProblem_id, problemIds) // 假设字段名是 problemId，如果是 problem_id 请调整
        );

        // 2. 转为 Map 方便快速匹配 (ID -> Entity)
        Map<Long, ProblemMath408Bank> bankMap = bankList.stream()
                .collect(Collectors.toMap(ProblemMath408Bank::getProblem_id, item -> item));

        // 3. 构建 Vo 列表
        // 注意：这里需要保持入参 problemIds 的顺序，或者根据业务需求排序
        // 如果 EmbeddingSearch 返回的顺序很重要，这里必须按照 targetSimilarIds 的顺序来构建列表
        List<ProblemMath408BankVo> voList = new ArrayList<>();

        for (Long pid : problemIds) {
            ProblemMath408Bank bank = bankMap.get(pid);
            if (bank != null) {
                // 复用你现有的转换逻辑
                // 注意：getProblemMath408Tags 和 getProbleMath408mVO 是你已有的方法
                List<String> tags = getProblemMath408Tags(pid);
                ProblemMath408BankVo vo = getProbleMath408mVO(bank, tags);
                vo.setStatus(bank.getStatus());
                // 如果需要隐藏答案，可以在这里设置
                // vo.setCorrect_answer(null);

                voList.add(vo);
            }
        }

        return voList;
    }
    private List<ProblemMath408BankVo> getProblemMath408(List<ProblemMath408Bank> problemMath408BankList,
                                                         Map<Long, List<String>> problemMath408TagsWithNames) {
        // 设置题目VO信息
        List<ProblemMath408BankVo> math408BankVos = new ArrayList<>();

        for (ProblemMath408Bank problemMath408Bank : problemMath408BankList) {
            List<String> problemMath408Tags = problemMath408TagsWithNames.get(problemMath408Bank.getProblem_id());
            ProblemMath408BankVo problemMath408BankVo = getProbleMath408mVO(problemMath408Bank, problemMath408Tags);
            problemMath408BankVo.setAnalysis(null);
            problemMath408BankVo.setCorrect_answer(null);
            math408BankVos.add(problemMath408BankVo);
        }

        return math408BankVos;
    }

    private List<ProblemAlgorithmBankVo> getAlgorithmProblem(List<ProblemAlgorithmBank> problemAlgorithmBankList,  Map<Long, List<String>> problemAlgorithmTagsMap) {
        List<ProblemAlgorithmBankVo> problemAlgorithmVoList = new ArrayList<>();
        for (ProblemAlgorithmBank problemAlgorithmBank : problemAlgorithmBankList) {

            List<String> problemAlgorithmTags = problemAlgorithmTagsMap.get(problemAlgorithmBank.getProblem_id());
            String description = problemAlgorithmBank.getDescription();
            ProblemAlgorithmBankVo problemAlgorithmVO = getProblemAlgorithmVO(problemAlgorithmBank, problemAlgorithmTags);

            // 设置描述
            problemAlgorithmVO.setDescription(description);
            problemAlgorithmVoList.add(problemAlgorithmVO);
        }

        return problemAlgorithmVoList;
    }

    /**
     * 脱敏加工后的题目信息
     *
     * @param problemAlgorithmBank 脱敏前的题目信息
     * @param problemAlgorithmTags 题目对应算法标签
     * @return 脱敏加工后的题目信息
     */
    private ProblemAlgorithmBankVo getProblemAlgorithmVO(ProblemAlgorithmBank problemAlgorithmBank, List<String> problemAlgorithmTags) {
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
        problemAlgorithmBankVo.setIs_delete(problemAlgorithmBank.getIs_delete());

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

        return problemAlgorithmBankVo;
    }

    // 提取的批量查询标签方法，包括标签名称
    private Map<Long, List<String>> getProblemMath408TagsWithNames(List<Long> problemIds) {
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
                    "FROM problem_math408_tags p " +
                    "JOIN problem_math408_tags_relation t ON p.tag_id = t.tag_id " +
                    "WHERE p.problem_id = ? " +
                    "AND p.is_delete = 0";

            List<String> tags = new ArrayList<>();
            try {
                // 5. 执行查询，获取该 problem_id 对应的所有标签
                tags = jdbcTemplate.queryForList(query, String.class, problemId);
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

    private ProblemMath408BankVo getProbleMath408mVO(ProblemMath408Bank problemMath408Bank, List<String> problemMath408Tags) {
        ProblemMath408BankVo problemMath408BankVo = new ProblemMath408BankVo();
        problemMath408BankVo.setProblem_id(problemMath408Bank.getProblem_id());
        problemMath408BankVo.setProblem_name(problemMath408Bank.getProblem_name());
        problemMath408BankVo.setDescription(problemMath408Bank.getDescription());
        problemMath408BankVo.setOptions(problemMath408Bank.getOptions());
        problemMath408BankVo.setDifficulty_name(problemMath408Bank.getDifficulty_name());
        problemMath408BankVo.setOption_type(problemMath408Bank.getOption_type());
        problemMath408BankVo.setCorrect_answer(problemMath408Bank.getCorrect_answer());
        problemMath408BankVo.setSource_name(problemMath408Bank.getSource_name());
        problemMath408BankVo.setTagsList(problemMath408Tags);
        problemMath408BankVo.setAnalysis(problemMath408Bank.getAnalysis());

        return problemMath408BankVo;
    }

    /**
     * 获取题目包含算法标签
     *
     * @param problem_id 问题ID
     * @return 题目包含算法标签
     */
    private List<String> getProblemMath408Tags(Long problem_id) {
        QueryWrapper<ProblemMath408Tags> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);

        List<ProblemMath408Tags> tagsList = problemMath408TagsMapper.selectList(queryWrapper);

        List<String> problemAlgorithmTags = new ArrayList<>();
        for (ProblemMath408Tags problemMath408Tags : tagsList) {
            problemAlgorithmTags.add(getProblemMath408TagsByTagId(problemMath408Tags.getTag_id()));
        }

        return problemAlgorithmTags;
    }

    /**
     * 获取标签名称
     *
     * @param tag_id 算法标签id
     * @return 寻找id对应算法名称
     */
    private String getProblemMath408TagsByTagId(Long tag_id) {
        QueryWrapper<ProblemMath408TagsRelation> problemAlgorithmTagsRelationQueryWrapper = new QueryWrapper<>();
        problemAlgorithmTagsRelationQueryWrapper.eq("tag_id", tag_id);
        return problemMath408TagsRelationMapper.selectOne(problemAlgorithmTagsRelationQueryWrapper).getTag_name();
    }
}




