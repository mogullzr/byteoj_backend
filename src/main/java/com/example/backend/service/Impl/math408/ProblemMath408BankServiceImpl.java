package com.example.backend.service.Impl.math408;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemMath408BankMapper;
import com.example.backend.mapper.ProblemMath408TagsMapper;
import com.example.backend.mapper.ProblemMath408TagsRelationMapper;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTags;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTagsRelation;
import com.example.backend.models.domain.math408.ProblemMath408Bank;
import com.example.backend.models.domain.math408.ProblemMath408Tags;
import com.example.backend.models.domain.math408.ProblemMath408TagsRelation;
import com.example.backend.models.request.math408.ProblemRequest;
import com.example.backend.models.request.problem.Math408QueryRequest;
import com.example.backend.models.vo.problem.ProblemAlgorithmBankVo;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.service.math408.ProblemMath408BankService;
import com.example.backend.service.math408.ProblemMath408TagsService;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
    private JdbcTemplate jdbcTemplate;

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
            problemMath408BankVo.setDescription(null);
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


        return problemMath408TagsService.saveBatch(problemMath408TagsList);
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




