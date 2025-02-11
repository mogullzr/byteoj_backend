package com.example.backend.service.Impl.math408;
import java.util.*;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.constant.OptionStatusEnum;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.math408.*;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.problem.ProblemMath408Request;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.service.math408.ProblemMath408Service;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Service
@Slf4j
public class ProblemMath408ServiceImpl extends ServiceImpl<ProblemMath408BankMapper, ProblemMath408Bank>
        implements ProblemMath408Service {
    @Resource
    ProblemMath408BankMapper problemMath408BankMapper;

    @Resource
    ProblemMath408TagsMapper problemMath408TagsMapper;

    @Resource
    ProblemMath408TagsRelationMapper problemMath408TagsRelationMapper;

    @Resource
    ProblemMath408OptionsMapper problemMath408OptionsMapper;

    @Resource
    AcMath408ProblemMapper acMath408ProblemMapper;

    @Resource
    ProblemMath408CorrectAnswersMapper problemMath408CorrectAnswersMapper;
    @Resource
    UserMapper userMapper;
    @Override
    public List<ProblemMath408BankVo> problemMath408SearchAll(Integer uuid, Integer status, HttpServletRequest httpServletRequest) {
        QueryWrapper<ProblemMath408Bank> problemMathBankQueryWrapper = new QueryWrapper<>();
        problemMathBankQueryWrapper.eq("status", status);
        List<ProblemMath408Bank> problemMath408BankList = this.list(problemMathBankQueryWrapper);

        List<ProblemMath408BankVo> problemMath408BankVoList = new ArrayList<>();

        for (int item = 0; item < problemMath408BankList.size(); item++) {
            List<String> problemMathTags = getProblemMath408Tags(problemMath408BankList.get(item).getProblem_id());
            problemMath408BankVoList.add(getProblemMath408bankVo(problemMath408BankList.get(item), uuid, problemMathTags));
        }

        return problemMath408BankVoList;
    }

    @Override
    public List<ProblemMath408BankVo> problemMath408SearchByPage(Integer uuid, Integer status, Integer PageNum) {
        Page<ProblemMath408Bank> page = new Page<>(PageNum, 50);
        QueryWrapper<ProblemMath408Bank> problemMathBankQueryWrapper = new QueryWrapper<>();
        problemMathBankQueryWrapper.eq("status", status);

        List<ProblemMath408Bank> problemMath408BankList = problemMath408BankMapper.selectPage(page, problemMathBankQueryWrapper).getRecords();
        List<ProblemMath408BankVo> problemMath408BankVoList = new ArrayList<>();

        for (int item = 0; item < problemMath408BankList.size(); item++) {
            List<String> problemMathTags = getProblemMath408Tags(problemMath408BankList.get(item).getProblem_id());
            problemMath408BankVoList.add(getProblemMath408bankVo(problemMath408BankList.get(item), uuid, problemMathTags));
        }

        return problemMath408BankVoList;
    }

    @Override
    public List<ProblemMath408BankVo> getProblemMath408TagsByTagId(Long tag_id, Integer uuid, HttpServletRequest httpServletRequest) {
        QueryWrapper<ProblemMath408Tags> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("tag_id", tag_id);
        List<ProblemMath408Tags> problemMath408TagsList = problemMath408TagsMapper.selectList(queryWrapper);
        List<ProblemMath408Bank> problemMath408BankList = new ArrayList<>();

        for (ProblemMath408Tags problemMath408Tag : problemMath408TagsList) {
            QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();
            problemMath408BankQueryWrapper.eq("problem_id", problemMath408Tag.getProblem_id());
            problemMath408BankList.add(problemMath408BankMapper.selectOne(problemMath408BankQueryWrapper));
        }

        List<ProblemMath408BankVo> problemMath408BankVoList = new ArrayList<>();
        for (ProblemMath408Bank problemMath408Bank : problemMath408BankList) {
            List<String> problemMath408Tags = getProblemMath408Tags(problemMath408Bank.getProblem_id());
            problemMath408BankVoList.add(getProblemMath408bankVo(problemMath408Bank, uuid, problemMath408Tags));
        }

        return problemMath408BankVoList;
    }

    @Override
    public ProblemMath408BankVo getProblemMath408TagsByProblemId(Integer problem_id, Integer uuid, HttpServletRequest httpServletRequest) {
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();
        problemMath408BankQueryWrapper.eq("problem_id", problem_id);
        ProblemMath408Bank problemMath408Bank = problemMath408BankMapper.selectOne(problemMath408BankQueryWrapper);

        List<String> tagsList = getProblemMath408Tags(problemMath408Bank.getProblem_id());
        return getProblemMath408bankVo(problemMath408Bank, uuid, tagsList);
    }

    @Override
    public List<ProblemMath408BankVo> getProblemMath408ByDifficulty(String difficulty, Integer uuid, HttpServletRequest httpServletRequest) {
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();
        problemMath408BankQueryWrapper.eq("difficulty_name", difficulty);

        List<ProblemMath408Bank> problemMath408BankList = problemMath408BankMapper.selectList(problemMath408BankQueryWrapper);
        List<ProblemMath408BankVo> problemMath408BankVoList = new ArrayList<>();

        for (int item = 0; item < problemMath408BankList.size(); item ++) {
            List<String> problemMath408Tags = getProblemMath408Tags(problemMath408BankList.get(item).getProblem_id());
            problemMath408BankVoList.add(getProblemMath408bankVo(problemMath408BankList.get(item), uuid, problemMath408Tags));
        }

        return problemMath408BankVoList;
    }

    @Override
    public String problemMath408GetProblemAnswer(Long problem_id) {
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();
        problemMath408BankQueryWrapper.eq("problem_id", problem_id);
        if (problemMath408BankMapper.selectOne(problemMath408BankQueryWrapper) == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "系统出错了！！！请联系管理员修复");
        }

        QueryWrapper<ProblemMath408CorrectAnswers> problemMath408CorrectAnswersQueryWrapper = new QueryWrapper<>();
        problemMath408CorrectAnswersQueryWrapper.eq("problem_id", problem_id);
        ProblemMath408CorrectAnswers problemMath408CorrectAnswers = problemMath408CorrectAnswersMapper.selectOne(problemMath408CorrectAnswersQueryWrapper);

        return problemMath408CorrectAnswers.getCorrect_index();
    }

    @Override
    public Boolean problemAdd(ProblemMath408Request problemMath408Request, boolean isAdmin, Integer status, HttpServletRequest httpServletRequest) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "对不起，你没有创建权限");
        }

        problemMath408Request.setCreate_time(new Date());

        Long problem_id = problemMath408Request.getProblem_id();
        String problem_name = problemMath408Request.getProblem_name();
        String difficulty_name = problemMath408Request.getDifficulty_name();
        String source_name = problemMath408Request.getSource_name();
        String description = problemMath408Request.getDescription();
        Long create_by_id = problemMath408Request.getCreate_by_id();
        String create_by_name = problemMath408Request.getCreate_by_name();
        Date create_time = problemMath408Request.getCreate_time();
        Integer option_type = problemMath408Request.getOption_type();

        List<Map<String, String>> options = problemMath408Request.getOptions();
        List<Long> tag_list = problemMath408Request.getTag_list();

        if (problem_id == null
                || problem_name == null
                || difficulty_name == null
                || source_name == null
                || description == null
                || create_by_id == null
                || create_by_name == null
                || create_time == null
                || option_type == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "必填项不允许为空");
        }

        // 1.problem_id判别
        if (10000 >= problem_id) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题号设置不可小于10000");
        }

        ProblemMath408Bank isExist = getProblemMath408Bank(problem_id);
        if (isExist != null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题号已存在");
        }

        // 2.判断create_id是否存在
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("uuid", create_by_id);
        Long count = userMapper.selectCount(userQueryWrapper);
        if (count == 0) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "错误错误，用户不存在！！！");
        }

        // 3.其他的后续继续更新.....

        // 4.将题目信息插入到各个表中去

        // problem_math408_bank
        ProblemMath408Bank problemMath408Bank = new ProblemMath408Bank();
        problemMath408Bank.setProblem_id(problem_id);
        problemMath408Bank.setProblem_name(problem_name);
        problemMath408Bank.setDifficulty_name(difficulty_name);
        problemMath408Bank.setSource_name(source_name);
        problemMath408Bank.setDescription(description);
        problemMath408Bank.setCreate_by_id(create_by_id);
        problemMath408Bank.setCreate_by_name(create_by_name);
        problemMath408Bank.setCreate_time(create_time);
        problemMath408Bank.setStatus(status);
        problemMath408Bank.setOption_type(option_type);

        this.save(problemMath408Bank);

        // problem_math408_tags
        for (int item = 0; item < tag_list.size(); item ++) {
            ProblemMath408Tags problemMath408Tags = new ProblemMath408Tags();
            Long tag_id = tag_list.get(item);
            QueryWrapper<ProblemMath408TagsRelation> problemMath408TagsRelationQueryWrapper = new QueryWrapper<>();
            problemMath408TagsRelationQueryWrapper.eq("tag_id", tag_id);

            Long result = problemMath408TagsRelationMapper.selectCount(problemMath408TagsRelationQueryWrapper);
            if (result == 0) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "不存在这样的算法标签，请重新添加");
            }

            problemMath408Tags.setProblem_id(problem_id);
            problemMath408Tags.setTag_id(tag_id);
            problemMath408TagsMapper.insert(problemMath408Tags);
        }

        // problem_math408_options
        if (option_type.equals(OptionStatusEnum.single_option_QUESTION) || option_type.equals(OptionStatusEnum.multiple_option_QUESTION)) {
            for (int item = 0; item < options.size(); item ++) {
                Map<String, String> option = options.get(item);
                for (String key : option.keySet()) {
                    ProblemMath408Options problemMath408Options = new ProblemMath408Options();
                    problemMath408Options.setProblem_id(problem_id);
                    problemMath408Options.setOption_index(key);
                    problemMath408Options.setOption_text(option.get(key));

                    problemMath408OptionsMapper.insert(problemMath408Options);
                }
            }
        }

        return true;
    }

    @Override
    public Boolean problemDelete(Long problem_id, boolean isAdmin, HttpServletRequest httpServletRequest) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您没有删除权限");
        }

        ProblemMath408Bank isExist = getProblemMath408Bank(problem_id);
        if (isExist == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的题目");
        }

        // problem_math408_options
        QueryWrapper<ProblemMath408Options> problemMath408OptionsQueryWrapper = new QueryWrapper<>();
        problemMath408OptionsQueryWrapper.eq("problem_id", problem_id);
        problemMath408OptionsMapper.delete(problemMath408OptionsQueryWrapper);


        // problem_math408_tags
        QueryWrapper<ProblemMath408Tags> problemMath408TagsQueryWrapper = new QueryWrapper<>();
        problemMath408TagsQueryWrapper.eq("problem_id", problem_id);
        problemMath408TagsMapper.delete(problemMath408TagsQueryWrapper);

        // problem_math408_bank
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();
        problemMath408BankQueryWrapper.eq("problem_id", problem_id);
        problemMath408BankMapper.delete(problemMath408BankQueryWrapper);

        return true;
    }

    @Override
    public Boolean problemModify(ProblemMath408Request problemMath408Request, boolean isAdmin, HttpServletRequest httpServletRequest) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您没有修改权限");
        }

        problemMath408Request.setCreate_time(new Date());
        problemMath408Request.setUpdate_time(new Date());

        Long problem_id = problemMath408Request.getProblem_id();
        String problem_name = problemMath408Request.getProblem_name();
        String difficulty_name = problemMath408Request.getDifficulty_name();
        String source_name = problemMath408Request.getSource_name();
        String description = problemMath408Request.getDescription();
        Long create_by_id = problemMath408Request.getCreate_by_id();
        String create_by_name = problemMath408Request.getCreate_by_name();
        Date create_time = problemMath408Request.getCreate_time();
        Long update_by_id = problemMath408Request.getUpdate_by_id();
        String update_by_name = problemMath408Request.getUpdate_by_name();
        Date update_time = problemMath408Request.getUpdate_time();
        Integer option_type = problemMath408Request.getOption_type();

        List<Map<String, String>> options = problemMath408Request.getOptions();
        List<Long> tag_list = problemMath408Request.getTag_list();

        if (problem_id == null
                || problem_name == null
                || difficulty_name == null
                || source_name == null
                || description == null
                || create_by_id == null
                || create_by_name == null
                || create_time == null
                || update_by_id == null
                || update_by_name == null
                || update_time == null
                || option_type == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "必填项不允许为空");
        }

        // 1.problem_id判别
        if (10000 >= problem_id) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题号设置不可小于10000");
        }

        ProblemMath408Bank isExist = getProblemMath408Bank(problem_id);
        if (isExist == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题号不存在，无法修改");
        }

        // 2.判断update_id是否存在
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("uuid", update_by_id);
        Long count = userMapper.selectCount(userQueryWrapper);
        if (count == 0) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "错误错误，用户不存在！！！");
        }

        // 3.其他的后续继续更新.....

        // 4.将题目信息在各个表中修改

        // problem_math408_bank
        ProblemMath408Bank problemMath408Bank = new ProblemMath408Bank();
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();
        problemMath408BankQueryWrapper.eq("problem_id", problem_id);

        problemMath408Bank.setProblem_id(problem_id);
        problemMath408Bank.setProblem_name(problem_name);
        problemMath408Bank.setDifficulty_name(difficulty_name);
        problemMath408Bank.setSource_name(source_name);
        problemMath408Bank.setDescription(description);
        problemMath408Bank.setCreate_by_id(create_by_id);
        problemMath408Bank.setCreate_by_name(create_by_name);
        problemMath408Bank.setCreate_time(create_time);
        problemMath408Bank.setOption_type(option_type);

        problemMath408BankMapper.update(problemMath408Bank, problemMath408BankQueryWrapper);

        // problem_math408_tags
        for (int item = 0; item < tag_list.size(); item ++) {
            ProblemMath408Tags problemMath408Tags = new ProblemMath408Tags();
            QueryWrapper<ProblemMath408Tags> problemMath408TagsQueryWrapper = new QueryWrapper<>();
            problemMath408TagsQueryWrapper.eq("problem_id", problem_id);

            Long tag_id = tag_list.get(item);
            QueryWrapper<ProblemMath408TagsRelation> problemMath408TagsRelationQueryWrapper = new QueryWrapper<>();
            problemMath408TagsRelationQueryWrapper.eq("tag_id", tag_id);

            Long result = problemMath408TagsRelationMapper.selectCount(problemMath408TagsRelationQueryWrapper);
            if (result == 0) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "不存在这样的算法标签，请重新修改");
            }

            problemMath408Tags.setProblem_id(problem_id);
            problemMath408Tags.setTag_id(tag_id);

            problemMath408TagsMapper.update(problemMath408Tags, problemMath408TagsQueryWrapper);
        }

        // problem_math408_options
        if (option_type.equals(OptionStatusEnum.single_option_QUESTION) || option_type.equals(OptionStatusEnum.multiple_option_QUESTION)) {
            for (int item = 0; item < options.size(); item ++) {
                Map<String, String> option = options.get(item);
                for (String key : option.keySet()) {
                    ProblemMath408Options problemMath408Options = new ProblemMath408Options();
                    QueryWrapper<ProblemMath408Options> problemMath408OptionsQueryWrapper = new QueryWrapper<>();
                    problemMath408OptionsQueryWrapper.eq("problem_id", problem_id);
                    problemMath408OptionsQueryWrapper.eq("option_index", key);

                    problemMath408Options.setProblem_id(problem_id);
                    problemMath408Options.setOption_index(key);
                    problemMath408Options.setOption_text(option.get(key));

                    problemMath408OptionsMapper.update(problemMath408Options, problemMath408OptionsQueryWrapper);
                }
            }
        }

        return true;
    }

    private ProblemMath408Bank getProblemMath408Bank(Long problem_id) {
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();
        problemMath408BankQueryWrapper.eq("problem_id", problem_id);
        return problemMath408BankMapper.selectOne(problemMath408BankQueryWrapper);
    }


    /**
     * 获取标签名称
     *
     * @param tag_id 标签id
     * @return 标签名称
     */
    private String getProblemMath408TagsByTagId(Long tag_id) {
        QueryWrapper<ProblemMath408TagsRelation> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("tag_id", tag_id);
        problemMath408TagsRelationMapper.selectList(queryWrapper);
        return problemMath408TagsRelationMapper.selectOne(queryWrapper).getTag_name();
    }

    /**
     * 获取问题的标签列表
     *
     * @param problem_id 问题id
     * @return 标签列表
     */
    private List<String> getProblemMath408Tags(Long problem_id) {
        QueryWrapper<ProblemMath408Tags> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);
        List<ProblemMath408Tags> tagsList = problemMath408TagsMapper.selectList(queryWrapper);

        List<String> problemMath408Tags = new ArrayList<>();
        for (int item = 0; item < tagsList.size(); item ++) {
            problemMath408Tags.add(getProblemMath408TagsByTagId(tagsList.get(item).getTag_id()));
        }

        return problemMath408Tags;
    }

    /**
     * 脱敏问题信息
     *
     * @param problemMath408Bank 脱敏前数据
     * @param uuid 用户id
     * @param problemMath408Tags 问题标签
     * @return 脱敏后的数据信息
     */
    private ProblemMath408BankVo getProblemMath408bankVo(ProblemMath408Bank problemMath408Bank, Integer uuid, List<String> problemMath408Tags) {
        ProblemMath408BankVo problemMath408BankVo = new ProblemMath408BankVo();
        problemMath408BankVo.setProblem_id(problemMath408Bank.getProblem_id());
        problemMath408BankVo.setProblem_name(problemMath408Bank.getProblem_name());
        problemMath408BankVo.setDescription(problemMath408Bank.getDescription());
        problemMath408BankVo.setDifficulty_name(problemMath408Bank.getDifficulty_name());
        problemMath408BankVo.setOption_type(problemMath408Bank.getOption_type());
        problemMath408BankVo.setTag_list(problemMath408Tags);

        QueryWrapper<AcMath408Problem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problemMath408Bank.getProblem_id());

        if (!(uuid == null || uuid.equals(-1))) {
            queryWrapper.eq("uuid", uuid);
            AcMath408Problem acMath408Problem = acMath408ProblemMapper.selectOne(queryWrapper);
            if (acMath408Problem != null) {
                problemMath408BankVo.setStatus(acMath408Problem.getStatus());
            }
        }
        return problemMath408BankVo;
    }

}