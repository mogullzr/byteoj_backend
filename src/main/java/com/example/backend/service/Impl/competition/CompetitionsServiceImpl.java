package com.example.backend.service.Impl.competition;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.support.ExcelTypeEnum;
import com.alibaba.excel.write.style.column.LongestMatchColumnWidthStyleStrategy;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.algorithm.submission.SubmissionAlgorithmDetails;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.models.domain.competiton.*;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.CompetitionAddRequest;
import com.example.backend.models.request.CompetitionProblems;
import com.example.backend.models.request.competition.CompetitionRankRequest;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.submission.SubmissionsAlgorithmRecordsVo;
import com.example.backend.models.vo.competition.CompetitionInfoVo;
import com.example.backend.models.vo.competition.CompetitionProblemInfo;
import com.example.backend.models.vo.competition.CompetitionRankDetailVo;
import com.example.backend.models.vo.competition.CompetitionRankVo;
import com.example.backend.service.competition.CompetitionsService;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;

/**
 * @author Mogullzr
 * @description 针对表【competition(比赛基本信息表)】的数据库操作Service实现
 * @createDate 2024-07-18 16:24:00
 */
@Service
@Slf4j
public class CompetitionsServiceImpl extends ServiceImpl<CompetitionsMapper, Competitions>
        implements CompetitionsService{

    @Resource
    private CompetitionsMapper competitionsMapper;

    @Resource
    private CompetitionsUserMapper competitionsUserMapper;

    @Resource
    private CompetitionAcProblemsAlgorithmMapper competitionAcProblemsAlgorithmMapper;
    @Resource
    private CompetitionsProblemsAlgorithmMapper competitionsProblemsAlgorithmMapper;

    @Resource
    private CompetitionsProblemsMath408Mapper competitionsProblemsMath408Mapper;

    @Resource
    private ProblemAlgorithmBankMapper problemAlgorithmBankMapper;

    @Resource
    private SubmissionsAlgorithmMapper submissionsAlgorithmMapper;

    @Resource
    private SubmissionAlgorithmDetailsMapper submissionAlgorithmDetailsMapper;
    @Resource
    private UserMapper userMapper;


    /**
     * 盐值，混淆密码,不懂的去了解MD5加密方式
     */
    private static final String SALT = "Mogullzr";
    @Override
    public List<CompetitionInfoVo> competitionSearchByPage(Long PageNum, Long uuid) {
        QueryWrapper<Competitions> queryWrapper = new QueryWrapper<>();
        Page<Competitions> page = new Page<>(PageNum, 15);
        queryWrapper.orderByDesc("start_time");

        Page<Competitions> competitionsPage = competitionsMapper.selectPage(page, queryWrapper);
        List<Competitions> competitionsList = competitionsPage.getRecords();

        List<CompetitionInfoVo> competitionInfoVoList = new ArrayList<>();

        for (int item = 0; item < competitionsList.size(); item ++) {
            competitionInfoVoList.add(getCompetitionInfoVo(competitionsList.get(item), uuid));
            if (item == 0) {
                competitionInfoVoList.get(0).setPage_Sum(competitionsPage.getPages());
            }
        }

        return competitionInfoVoList;
    }

    @Override
    public CompetitionInfoVo competitionSearchByCompetitionId(Long competition_id, Long uuid) {
        QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
        competitionsQueryWrapper.eq("competition_id", competition_id);
        Competitions competition = competitionsMapper.selectOne(competitionsQueryWrapper);
        return getCompetitionInfoVo(competition, uuid);
    }

    @Override
    public CompetitionRankVo competitionSearchRank(Long competition_id, Integer PageNum, Long uuid) {
        CompetitionRankVo competitionRankVo = new CompetitionRankVo();
        List<CompetitionRankDetailVo> rank_user_list = new ArrayList<>();
        List<CompetitionProblemInfo> problem_list = new ArrayList<>();

        QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
        competitionsQueryWrapper.eq("competition_id", competition_id);
        Competitions competition = competitionsMapper.selectOne(competitionsQueryWrapper);

        // 1.首先搜索出当前竞赛的各个题目的总尝试次数和通过次数
        QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
        competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", competition_id);
        List<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmList = competitionsProblemsAlgorithmMapper.selectList(competitionsProblemsAlgorithmQueryWrapper);
        if (competitionsProblemsAlgorithmList == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "竞赛题目信息不存在");
        }

        competitionsProblemsAlgorithmList.forEach((problem)->{
            CompetitionProblemInfo competitionsProblemsAlgorithm = new CompetitionProblemInfo();
            competitionsProblemsAlgorithm.setIndex(problem.getIdx());
            competitionsProblemsAlgorithm.setScore(problem.getScore());
            competitionsProblemsAlgorithm.setAc_num(problem.getAc_total());
            competitionsProblemsAlgorithm.setTest_num(problem.getTest_total());

            problem_list.add(competitionsProblemsAlgorithm);
        });

        // 2.0 寻找出当前用户的信息
        List<CompetitionsUser> competitionsUsers = new ArrayList<>();
        QueryWrapper<CompetitionsUser> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid",uuid);
        queryWrapper.eq("competition_id", competition_id);
        CompetitionsUser competitionsUser = competitionsUserMapper.selectOne(queryWrapper);

//        competitionsUsers.add(competitionsUser);
        // 2.在competitions_user中根据ac_num，score进行降序排序
        Page<CompetitionsUser> competitionsUserPage = new Page<>(PageNum, 20);
        QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();
        competitionsUserQueryWrapper.eq("competition_id", competition_id);
        competitionsUserQueryWrapper.eq("is_participant", 0);

        if (competition.getPattern() == 0) {
            competitionsUserQueryWrapper.orderByDesc("ac_num");
        } else {
            competitionsUserQueryWrapper.orderByDesc("score");
        }

        competitionsUserQueryWrapper.orderByAsc("time_penalty");
        competitionsUsers.addAll(competitionsUserMapper.selectPage(competitionsUserPage, competitionsUserQueryWrapper).getRecords());

        // 3.拿到前20名的用户信息,开始搜索20名用户的各个题目的最终ac记录和最终wrong记录
        competitionsUsers.forEach((user)->{
            CompetitionRankDetailVo competitionRankDetailVo = new CompetitionRankDetailVo();

            // 3.1寻找用户几个基本信息
            QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
            userQueryWrapper.eq("uuid", user.getUuid());
            User user1 = userMapper.selectOne(userQueryWrapper);
            AtomicReference<Long> total_score = new AtomicReference<>(0L);

            competitionRankDetailVo.setUuid(user1.getUuid());
            competitionRankDetailVo.setUsername(user1.getUsername());
            Integer rating = getRating(user1);
            competitionRankDetailVo.setRated(rating);
            competitionRankDetailVo.setSchool(user1.getSchool());
            competitionRankDetailVo.setAc_num(user.getAc_num());

            // 秒转为时分秒
            Long seconds = user.getTime_penalty();
            Long hours =  seconds / 3600;
            Long minutes = (seconds % 3600) / 60;
            Long remainingSeconds = seconds % 60;
            competitionRankDetailVo.setTime_penalty(String.format("%02d:%02d:%02d", hours, minutes, remainingSeconds));

            // 3.2寻找用户的所有最终对应提交记录信息
            AtomicInteger is_ak = new AtomicInteger(0);
            List<SubmissionsAlgorithmRecordsVo> submissionsAlgorithmRecordsVoList = new ArrayList<>();
            problem_list.forEach((problem)->{
                SubmissionsAlgorithmRecordsVo submissionAlgorithmRecordVo = new SubmissionsAlgorithmRecordsVo();
                QueryWrapper<CompetitionsProblemsAlgorithm> competitionsUserQueryWrapper1 = new QueryWrapper<>();
                competitionsUserQueryWrapper1.eq("idx", problem.getIndex());
                competitionsUserQueryWrapper1.eq("competition_id", competition_id);
                CompetitionsProblemsAlgorithm competitionsProblemsAlgorithm = competitionsProblemsAlgorithmMapper.selectOne(competitionsUserQueryWrapper1);

                Long problem_id = competitionsProblemsAlgorithm.getProblem_id();

                QueryWrapper<CompetitionAcProblemsAlgorithm> competitionAcProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
                competitionAcProblemsAlgorithmQueryWrapper.eq("competition_id", competition_id);
                competitionAcProblemsAlgorithmQueryWrapper.eq("uuid",user.getUuid());
                competitionAcProblemsAlgorithmQueryWrapper.eq("idx", problem.getIndex());

                CompetitionAcProblemsAlgorithm competitionAcProblemsAlgorithm = competitionAcProblemsAlgorithmMapper.selectOne(competitionAcProblemsAlgorithmQueryWrapper);

                QueryWrapper<SubmissionsAlgorithm> submissionsAlgorithmQueryWrapper = new QueryWrapper<>();

                submissionsAlgorithmQueryWrapper.eq("problem_id", problem_id);
                submissionsAlgorithmQueryWrapper.eq("competition_id", competition_id);
                submissionsAlgorithmQueryWrapper.eq("uuid", user.getUuid());
                submissionsAlgorithmQueryWrapper.le("submit_time",competition.getEnd_time());
                submissionsAlgorithmQueryWrapper.ge("submit_time", competition.getStart_time());

                if (competition.getPattern() == 0) {
                    submissionsAlgorithmQueryWrapper.eq("results", "Accepted");
                }
                if (competitionAcProblemsAlgorithm == null) {
                    is_ak.set(1);
                    submissionsAlgorithmRecordsVoList.add(submissionAlgorithmRecordVo);
                    return;
                } else if (competitionAcProblemsAlgorithm.getStatus() == 1) {
                    is_ak.set(1);
                }

                if (competition.getPattern() != 0) {
                    submissionsAlgorithmQueryWrapper.orderByDesc("score");
                }
                List<SubmissionsAlgorithm> submissionsAlgorithmList = submissionsAlgorithmMapper.selectList(submissionsAlgorithmQueryWrapper);
                SubmissionsAlgorithm submissionsAlgorithm;
                if (!submissionsAlgorithmList.isEmpty()) {
                    submissionsAlgorithm = submissionsAlgorithmList.get(0);
                    submissionAlgorithmRecordVo.setSubmission_id(submissionsAlgorithm.getSubmission_id());
                    submissionAlgorithmRecordVo.setScore(submissionsAlgorithm.getScore());
                    submissionAlgorithmRecordVo.setTest_num(competitionAcProblemsAlgorithm.getTest_num());
                    if (competitionAcProblemsAlgorithm.getStatus() == 1) {
                        submissionsAlgorithmRecordsVoList.add(submissionAlgorithmRecordVo);
                        return;
                    }
                    submissionAlgorithmRecordVo.setSubmit_time(submissionsAlgorithm.getSubmit_time());
                    submissionAlgorithmRecordVo.setResult(submissionsAlgorithm.getResults());
                    submissionAlgorithmRecordVo.setLanguage(submissionsAlgorithm.getLanguages());
                    submissionAlgorithmRecordVo.setResult(submissionsAlgorithm.getResults());

                    submissionsAlgorithmRecordsVoList.add(submissionAlgorithmRecordVo);
                    total_score.updateAndGet(v -> v + submissionsAlgorithm.getScore());
                } else {
                    submissionsAlgorithmRecordsVoList.add(submissionAlgorithmRecordVo);
                }
            });
            competitionRankDetailVo.setProblem_record_list(submissionsAlgorithmRecordsVoList);
            competitionRankDetailVo.setIs_ak(is_ak.get());
            if (competition.getPattern() != 0) {
                competitionRankDetailVo.setTotal_score(total_score.get());
            }
            rank_user_list.add(competitionRankDetailVo);
        });

        if (!rank_user_list.isEmpty()) {
            rank_user_list.get(0).setPage_num(competitionsUserMapper.selectPage(competitionsUserPage, competitionsUserQueryWrapper).getPages());
        }
        // 最终插入即可
        competitionRankVo.setRank_user_list(rank_user_list);
        competitionRankVo.setProblem_list(problem_list);

        return competitionRankVo;
    }
    @Override
    public List<SubmissionsAlgorithmRecordsVo> competitionSearchRecords(Long competition_id, Long PageNum) {
        Page<SubmissionsAlgorithm> submissionsAlgorithmPage = new Page<>(PageNum, 20);
        QueryWrapper<SubmissionsAlgorithm> submissionsAlgorithmQueryWrapper = new QueryWrapper<>();
        List<SubmissionsAlgorithmRecordsVo> submissionsAlgorithmRecordsVoList = new ArrayList<>();

        submissionsAlgorithmQueryWrapper.eq("competition_id", competition_id);
        submissionsAlgorithmQueryWrapper.orderByDesc("submit_time");

        Page<SubmissionsAlgorithm> submissionsAlgorithmPage1 = submissionsAlgorithmMapper.selectPage(submissionsAlgorithmPage, submissionsAlgorithmQueryWrapper);
        List<SubmissionsAlgorithm> records = submissionsAlgorithmPage1.getRecords();

        AtomicBoolean flag = new AtomicBoolean(true);
        records.forEach((record)->{
            SubmissionsAlgorithmRecordsVo submissionsAlgorithmRecordsVo = new SubmissionsAlgorithmRecordsVo();
            submissionsAlgorithmRecordsVo.setSubmission_id(record.getSubmission_id());
            submissionsAlgorithmRecordsVo.setCode_length(record.getCode_length());
            submissionsAlgorithmRecordsVo.setLanguage(record.getLanguages());
            submissionsAlgorithmRecordsVo.setSubmit_time(record.getSubmit_time());
            submissionsAlgorithmRecordsVo.setResult(record.getResults());
            submissionsAlgorithmRecordsVo.setScore(record.getScore());
            QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
            competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", competition_id);
            competitionsProblemsAlgorithmQueryWrapper.eq("problem_id", record.getProblem_id());
            CompetitionsProblemsAlgorithm competitionsProblemsAlgorithm = competitionsProblemsAlgorithmMapper.selectOne(competitionsProblemsAlgorithmQueryWrapper);
            if (competitionsProblemsAlgorithm == null) {
                return;
            }
            submissionsAlgorithmRecordsVo.setChinese_name(competitionsProblemsAlgorithm.getIdx());

            Long uuid = record.getUuid();

            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("uuid", uuid);
            User user = userMapper.selectOne(queryWrapper);

            submissionsAlgorithmRecordsVo.setUser_name(user.getUsername());
            submissionsAlgorithmRecordsVo.setUuid(user.getUuid());

            QueryWrapper<SubmissionAlgorithmDetails> submissionAlgorithmDetailsQueryWrapper = new QueryWrapper<>();
            submissionAlgorithmDetailsQueryWrapper.eq("submission_id", record.getSubmission_id());

            SubmissionAlgorithmDetails submissionAlgorithmDetails = submissionAlgorithmDetailsMapper.selectOne(submissionAlgorithmDetailsQueryWrapper);
            if (submissionAlgorithmDetails == null) {
                throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "存在记录确实情况,注意！！！");
            }

            Integer rating = getRating(user);

            submissionsAlgorithmRecordsVo.setRated(rating);
            submissionsAlgorithmRecordsVo.setTime_used(submissionAlgorithmDetails.getTime_used());
            submissionsAlgorithmRecordsVo.setMemory_used(submissionAlgorithmDetails.getMemory_used());

            if (flag.get()) {
                flag.set(false);
                submissionsAlgorithmRecordsVo.setPage_num(submissionsAlgorithmPage1.getPages());
            }
            submissionsAlgorithmRecordsVoList.add(submissionsAlgorithmRecordsVo);
        });
        return submissionsAlgorithmRecordsVoList;
    }

    private static Integer getRating(User user) {
        Integer rating = user.getRating();
        if (rating >= 0 && rating < 1200) {
            rating = 0;
        } else if (rating >= 1200 && rating < 1350) {
            rating = 1;
        } else if (rating >= 1350 && rating < 1500) {
            rating = 2;
        } else if (rating >= 1500 && rating < 1700) {
            rating = 3;
        } else if (rating >= 1700 && rating < 1900) {
            rating = 4;
        } else if (rating >= 1900 && rating < 2050) {
            rating = 5;
        } else if (rating >= 2050 && rating < 2200) {
            rating = 6;
        } else if (rating >= 2200 && rating < 2600) {
            rating = 7;
        } else {
            rating = 8;
        }
        return rating;
    }

    @Override
    public Long competitionAddByUser(CompetitionAddRequest competitionAddRequest, Long uuid) {
        List<CompetitionProblems> algorithm_problem_list = competitionAddRequest.getAlgorithm_problem_list();
        List<CompetitionProblems> math408_problem_list = competitionAddRequest.getMath408_problem_list();
        QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
        competitionsQueryWrapper.eq("competition_id", competitionAddRequest.getCompetition_id());
        if (competitionsMapper.selectOne(competitionsQueryWrapper) != null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "竞赛id已存在");
        }
        Competitions competition = competitionSetCompetition(competitionAddRequest);

        if (!algorithm_problem_list.isEmpty()) {
            for (int item = 0; item < algorithm_problem_list.size(); item ++) {
                CompetitionsProblemsAlgorithm algorithm = new CompetitionsProblemsAlgorithm();
                algorithm.setProblem_id(algorithm_problem_list.get(item).getProblem_id());
                algorithm.setCompetition_id(competition.getCompetition_id());
                algorithm.setIdx(algorithm_problem_list.get(item).getIndex());
                algorithm.setProblem_name(algorithm_problem_list.get(item).getProblem_name());
                competitionsProblemsAlgorithmMapper.insert(algorithm);
            }
        } else if (!math408_problem_list.isEmpty()){
            for (int item = 0; item < math408_problem_list.size(); item ++) {
                CompetitionsProblemsMath408 math408 = new CompetitionsProblemsMath408();
                math408.setCompetition_id(competition.getCompetition_id());
                math408.setProblem_id(math408_problem_list.get(item).getProblem_id());
                competitionsProblemsMath408Mapper.insert(math408);
            }
        }
        return competition.getCompetition_id();
    }

    @Override
    public boolean competitionModifyByUser(CompetitionAddRequest competitionAddRequest, Long uuid) {
        List<CompetitionProblems> algorithm_problem_list = competitionAddRequest.getAlgorithm_problem_list();
        List<CompetitionProblems> math408_problem_list = competitionAddRequest.getMath408_problem_list();
        QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
        QueryWrapper<CompetitionsProblemsMath408> competitionsProblemsMath408QueryWrapper = new QueryWrapper<>();
        competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", competitionAddRequest.getCompetition_id());
        competitionsProblemsMath408QueryWrapper.eq("competition_id", competitionAddRequest.getCompetition_id());

        List<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithms = competitionsProblemsAlgorithmMapper.selectList(competitionsProblemsAlgorithmQueryWrapper);
        List<CompetitionsProblemsMath408> competitionsProblemsMath408s = competitionsProblemsMath408Mapper.selectList(competitionsProblemsMath408QueryWrapper);

        List<CompetitionsProblemsAlgorithm> AlgorithmList = new ArrayList<>();
        List<CompetitionsProblemsMath408> Math408List = new ArrayList<>();

        // filter过滤寻找出不同项
//        for (int item = 0; item < competitionsProblemsAlgorithms.size(); item ++) {
//            AlgorithmList.add(competitionsProblemsAlgorithms.get(item));
//        }
//        AlgorithmList = findDifferentItems(AlgorithmList, algorithm_problem_list);
//        for (int item = 0; item < competitionsProblemsMath408s.size(); item ++) {
//            Math408List.add(competitionsProblemsMath408s.get(item).getProblem_id());
//        }
//        Math408List = findDifferentItems(Math408List, math408_problem_list);
//
//
//        competitionSetCompetition(competitionAddRequest);
//
//        for (int item = 0; item < AlgorithmList.size(); item ++) {
//            QueryWrapper<CompetitionsProblemsAlgorithm> queryWrapper = new QueryWrapper<>();
//            queryWrapper.eq("competition_id", competitionAddRequest.getCompetition_id());
//            queryWrapper.eq("problem_id", AlgorithmList.get(item));
//            CompetitionsProblemsAlgorithm competitionsProblemsAlgorithm = competitionsProblemsAlgorithmMapper.selectOne(queryWrapper);
//            if (competitionsProblemsAlgorithm == null) {
//                CompetitionsProblemsAlgorithm algorithm = new CompetitionsProblemsAlgorithm();
//                algorithm.setCompetition_id(competitionAddRequest.getCompetition_id());
//                algorithm.setProblem_id(AlgorithmList.get(item).getProblem_id());
//
//                competitionsProblemsAlgorithmMapper.insert(algorithm);
//            } else {
//                competitionsProblemsAlgorithmMapper.delete(queryWrapper);
////            }
//        }
//
//
//        for (int item = 0; item < Math408List.size(); item ++) {
//            QueryWrapper<CompetitionsProblemsMath408> queryWrapper = new QueryWrapper<>();
//            queryWrapper.eq("problem_id", Math408List.get(item));
//            CompetitionsProblemsMath408 competitionsProblemsMath408 = competitionsProblemsMath408Mapper.selectOne(queryWrapper);
//            if (competitionsProblemsMath408 == null) {
//                CompetitionsProblemsMath408 math408 = new CompetitionsProblemsMath408();
//                math408.setCompetition_id(competitionAddRequest.getCompetition_id());
//                math408.setProblem_id(Math408List.get(item));
//
//                competitionsProblemsMath408Mapper.insert(math408);
//            } else {
//                competitionsProblemsMath408Mapper.delete(queryWrapper);
//            }
//        }
//
        return true;
    }

    @Override
    public boolean competitionDeleteByAdmin(Long competition_id, Long uuid, boolean isAdmin) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您没有管理员权限");
        }

        QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
        competitionsQueryWrapper.eq("competition_id", competition_id);
        competitionsQueryWrapper.eq("create_by", uuid);

        Competitions competition = competitionsMapper.selectOne(competitionsQueryWrapper);
        if (competition == null) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "信息错误");
        } else {
//            QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmMapperQueryWrapper = new QueryWrapper<>();
//            QueryWrapper<CompetitionsProblemsMath408> competitionsProblemsMath408QueryWrapper = new QueryWrapper<>();
//            QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();

//            competitionsProblemsAlgorithmMapperQueryWrapper.eq("competition_id", competition_id);
//            competitionsProblemsMath408QueryWrapper.eq("competition_id", competition_id);
//            competitionsUserQueryWrapper.eq("competition_id", competition_id);

//            competitionsProblemsAlgorithmMapper.delete(competitionsProblemsAlgorithmMapperQueryWrapper);
//            competitionsProblemsMath408Mapper.delete(competitionsProblemsMath408QueryWrapper);
//            competitionsUserMapper.delete(competitionsUserQueryWrapper);
//            competitionsMapper.delete(competitionsQueryWrapper);
            Competitions competitions = competitionsMapper.selectOne(competitionsQueryWrapper);
            competitions.setIs_delete((competitions.getIs_delete() + 1) % 2);
            competitionsMapper.update(competitions,competitionsQueryWrapper);
            return true;
        }
    }

    @Override
    public boolean competitionUserJoin(Long competition_id, String password, Long uuid) {
        QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();
        QueryWrapper<Competitions> queryWrapper = new QueryWrapper<>();

        competitionsUserQueryWrapper.eq("competition_id", competition_id);
        competitionsUserQueryWrapper.eq("uuid", uuid);
        queryWrapper.eq("competition_id", competition_id);

        CompetitionsUser competitionsUser = competitionsUserMapper.selectOne(competitionsUserQueryWrapper);

        Competitions competition = competitionsMapper.selectOne(queryWrapper);
        if (competitionsUser != null) {
            Integer Is_participant = competitionsUser.getIs_participant();
            if (Is_participant.equals(0)) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "请不要重复报名，您已经报名过了！");
            } else {

                String CorrectPassword = competition.getPassword();
                if (competition.getStatus() == 1 && (!Objects.equals(CorrectPassword, "") || !CorrectPassword.isEmpty())) {
                    password = DigestUtils.md5DigestAsHex((SALT +password).getBytes());
                    if (!Objects.equals(CorrectPassword, password)) {
                        throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码错误");
                    }
                }

                competitionsUser.setIs_participant(0);
                competitionsUserMapper.update(competitionsUser, competitionsUserQueryWrapper);
                competition.setJoins(competition.getJoins() + 1);
                competitionsMapper.update(competition, queryWrapper);
                return true;
            }
        }
        String CorrectPassword = competition.getPassword();
        if (competition.getStatus() == 1 && (!Objects.equals(CorrectPassword, "") || !CorrectPassword.isEmpty())) {
            password = DigestUtils.md5DigestAsHex((SALT +password).getBytes());

            if (!Objects.equals(CorrectPassword, password)) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码错误");
            }
        }

        competitionsUser = new CompetitionsUser();
        competitionsUser.setUuid(uuid);
        competitionsUser.setCompetition_id(competition_id);
        competitionsUser.setJoin_time(new Date());
        competitionsUser.setIs_participant(0);

        competitionsUserMapper.insert(competitionsUser);
        competition.setJoins(competition.getJoins() + 1);
        competitionsMapper.update(competition, queryWrapper);
        return true;
    }

    @Override
    public boolean competitionUserJoinCancel(Long competition_id, Long uuid) {
        QueryWrapper<CompetitionsUser> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competition_id);
        queryWrapper.eq("uuid", uuid);

        CompetitionsUser competitionsUser = competitionsUserMapper.selectOne(queryWrapper);

        QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
        competitionsQueryWrapper.eq("competition_id", competition_id);

        if (competitionsUser == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "你还没有报名比赛呢！");
        }

        if (competitionsUser.getIs_participant() == 1) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "你还没有报名比赛呢！");
        }
        competitionsUser.setIs_participant(1);
        competitionsUserMapper.update(competitionsUser, queryWrapper);

        Competitions competition = competitionsMapper.selectOne(competitionsQueryWrapper);
        competition.setJoins(competition.getJoins() - 1);
        competitionsMapper.update(competition, competitionsQueryWrapper);

        return true;
    }

    @SneakyThrows
    @Override
    public void competitionAdminGetRankExcel(Long competitionId, Long uuid, HttpServletResponse httpServletResponse){
        QueryWrapper<Competitions> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competitionId);
        queryWrapper.eq("created_by", uuid);

        Competitions competition = competitionsMapper.selectOne(queryWrapper);

        if (Objects.isNull(competition)) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "竞赛信息不存在？还是你在抓我包？？？");
        }

        List<CompetitionRankDetailVo> rank_user_list = new ArrayList<>();
        List<CompetitionProblemInfo> problem_list = new ArrayList<>();
        CompetitionRankVo competitionRankVo = new CompetitionRankVo();

        // 1.首先搜索出当前竞赛的各个题目的总尝试次数和通过次数
        QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
        competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", competitionId);
        List<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmList = competitionsProblemsAlgorithmMapper.selectList(competitionsProblemsAlgorithmQueryWrapper);
        if (competitionsProblemsAlgorithmList == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "竞赛题目信息不存在");
        }

        competitionsProblemsAlgorithmList.forEach((problem)->{
            CompetitionProblemInfo competitionsProblemsAlgorithm = new CompetitionProblemInfo();
            competitionsProblemsAlgorithm.setIndex(problem.getIdx());
            competitionsProblemsAlgorithm.setScore(problem.getScore());
            competitionsProblemsAlgorithm.setAc_num(problem.getAc_total());
            competitionsProblemsAlgorithm.setTest_num(problem.getTest_total());

            problem_list.add(competitionsProblemsAlgorithm);
        });

        // 2.在competitions_user中根据ac_num，score进行降序排序
        QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();
        competitionsUserQueryWrapper.eq("competition_id", competitionId);
        competitionsUserQueryWrapper.eq("is_participant", 0);

        if (competition.getPattern() == 0) {
            competitionsUserQueryWrapper.orderByDesc("ac_num");
        } else {
            competitionsUserQueryWrapper.orderByDesc("score");
        }

        competitionsUserQueryWrapper.orderByAsc("time_penalty");
        List<CompetitionsUser> competitionsUsers = competitionsUserMapper.selectList(competitionsUserQueryWrapper);

        // 3.拿到前20名的用户信息,开始搜索20名用户的各个题目的最终ac记录和最终wrong记录
        competitionsUsers.forEach((user)->{
            CompetitionRankDetailVo competitionRankDetailVo = new CompetitionRankDetailVo();

            // 3.1寻找用户几个基本信息
            QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
            userQueryWrapper.eq("uuid", user.getUuid());
            User user1 = userMapper.selectOne(userQueryWrapper);
            AtomicReference<Long> total_score = new AtomicReference<>(0L);

            competitionRankDetailVo.setUuid(user1.getUuid());
            competitionRankDetailVo.setUsername(user1.getUsername());
            Integer rating = getRating(user1);
            competitionRankDetailVo.setRated(rating);
            competitionRankDetailVo.setSchool(user1.getSchool());
            competitionRankDetailVo.setAc_num(user.getAc_num());

            // 秒转为时分秒
            Long seconds = user.getTime_penalty();
            Long hours =  seconds / 3600;
            Long minutes = (seconds % 3600) / 60;
            Long remainingSeconds = seconds % 60;
            competitionRankDetailVo.setTime_penalty(String.format("%02d:%02d:%02d", hours, minutes, remainingSeconds));

            // 3.2寻找用户的所有最终对应提交记录信息
            AtomicInteger is_ak = new AtomicInteger(0);
            List<SubmissionsAlgorithmRecordsVo> submissionsAlgorithmRecordsVoList = new ArrayList<>();
            problem_list.forEach((problem)->{
                SubmissionsAlgorithmRecordsVo submissionAlgorithmRecordVo = new SubmissionsAlgorithmRecordsVo();
                QueryWrapper<CompetitionsProblemsAlgorithm> competitionsUserQueryWrapper1 = new QueryWrapper<>();
                competitionsUserQueryWrapper1.eq("idx", problem.getIndex());
                competitionsUserQueryWrapper1.eq("competition_id", competitionId);
                CompetitionsProblemsAlgorithm competitionsProblemsAlgorithm = competitionsProblemsAlgorithmMapper.selectOne(competitionsUserQueryWrapper1);

                Long problem_id = competitionsProblemsAlgorithm.getProblem_id();

                QueryWrapper<CompetitionAcProblemsAlgorithm> competitionAcProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
                competitionAcProblemsAlgorithmQueryWrapper.eq("competition_id", competitionId);
                competitionAcProblemsAlgorithmQueryWrapper.eq("uuid",user.getUuid());
                competitionAcProblemsAlgorithmQueryWrapper.eq("idx", problem.getIndex());

                CompetitionAcProblemsAlgorithm competitionAcProblemsAlgorithm = competitionAcProblemsAlgorithmMapper.selectOne(competitionAcProblemsAlgorithmQueryWrapper);

                QueryWrapper<SubmissionsAlgorithm> submissionsAlgorithmQueryWrapper = new QueryWrapper<>();

                submissionsAlgorithmQueryWrapper.eq("problem_id", problem_id);
                submissionsAlgorithmQueryWrapper.eq("competition_id", competitionId);
                submissionsAlgorithmQueryWrapper.eq("uuid", user.getUuid());
                submissionsAlgorithmQueryWrapper.le("submit_time",competition.getEnd_time());
                submissionsAlgorithmQueryWrapper.ge("submit_time", competition.getStart_time());
                if (competition.getPattern() == 0) {
                    submissionsAlgorithmQueryWrapper.eq("results", "Accepted");
                }

                if (competitionAcProblemsAlgorithm == null) {
                    is_ak.set(1);
                    submissionsAlgorithmRecordsVoList.add(submissionAlgorithmRecordVo);
                    return;
                } else if (competitionAcProblemsAlgorithm.getStatus() == 1) {
                    is_ak.set(1);
                }

                if (competition.getPattern() != 0) {
                    submissionsAlgorithmQueryWrapper.orderByDesc("score");
                }
                List<SubmissionsAlgorithm> submissionsAlgorithmList = submissionsAlgorithmMapper.selectList(submissionsAlgorithmQueryWrapper);
                SubmissionsAlgorithm submissionsAlgorithm;
                if (!submissionsAlgorithmList.isEmpty()) {
                    submissionsAlgorithm = submissionsAlgorithmList.get(0);
                    submissionAlgorithmRecordVo.setSubmission_id(submissionsAlgorithm.getSubmission_id());
                    submissionAlgorithmRecordVo.setScore(submissionsAlgorithm.getScore());
                    submissionAlgorithmRecordVo.setTest_num(competitionAcProblemsAlgorithm.getTest_num());
                    if (competitionAcProblemsAlgorithm.getStatus() == 1) {
                        submissionsAlgorithmRecordsVoList.add(submissionAlgorithmRecordVo);
                        return;
                    }
                    submissionAlgorithmRecordVo.setSubmit_time(submissionsAlgorithm.getSubmit_time());
                    submissionAlgorithmRecordVo.setResult(submissionsAlgorithm.getResults());
                    submissionAlgorithmRecordVo.setLanguage(submissionsAlgorithm.getLanguages());
                    submissionAlgorithmRecordVo.setResult(submissionsAlgorithm.getResults());

                    submissionsAlgorithmRecordsVoList.add(submissionAlgorithmRecordVo);
                    total_score.updateAndGet(v -> v + submissionsAlgorithm.getScore());
                } else {
                    submissionsAlgorithmRecordsVoList.add(submissionAlgorithmRecordVo);
                }
            });
            competitionRankDetailVo.setProblem_record_list(submissionsAlgorithmRecordsVoList);
            competitionRankDetailVo.setIs_ak(is_ak.get());
            if (competition.getPattern() != 0) {
                competitionRankDetailVo.setTotal_score(total_score.get());
            }
            rank_user_list.add(competitionRankDetailVo);
        });

        // 插入
        competitionRankVo.setRank_user_list(rank_user_list);
        competitionRankVo.setProblem_list(problem_list);

        // 最后根据这些信息进行Excel表格写入操作
        SetRankExcel(competition.getCompetition_name(), competitionRankVo, httpServletResponse);
    }

    @Override
    public List<UserVo> competitionSearchRankTop10() {
        Page<User> page = new Page<>(1, 10);
        return getUserVoList(page, null);
    }

    @Override
    public List<UserVo> competitionSearchRank(CompetitionRankRequest competitionRankRequest) {
        Page<User> page = new Page<>(competitionRankRequest.getCurrent(), competitionRankRequest.getSize());
        return getUserVoList(page, competitionRankRequest.getKeyword());
    }

    private List<UserVo> getUserVoList(Page<User> page, String keyword) {
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.orderByDesc("rating");
        if (keyword != null && !Objects.equals(keyword, "")) {
            userQueryWrapper.or().like("username", keyword);
            userQueryWrapper.or().like("school", keyword);
        }
        Page<User> page1 = userMapper.selectPage(page, userQueryWrapper);
        List<User> records = page1.getRecords();
        List<UserVo> userVos = new ArrayList<>();

        boolean flag = false;
        for (User record : records) {

            UserVo safetyUser = new UserVo();
            Integer rating = record.getRating();

            if (!flag) {
                safetyUser.setPages((int) page1.getPages());
            }
            safetyUser.setUsername(record.getUsername());
            safetyUser.setRating(rating);
            safetyUser.setUuid(record.getUuid());
            safetyUser.setRated(getRating(record));
            safetyUser.setSchool(record.getSchool());
            safetyUser.setAvatar(record.getAvatar());
            userVos.add(safetyUser);
        }
        return userVos;
    }

    /**
     * 是否filter过滤器来过滤找出两个列表的不同项
     *
     * @param list1 列表1
     * @param list2 列表2
     * @return
     */
    private static List<CompetitionProblems> findDifferentItems(List<CompetitionProblems> list1, List<CompetitionProblems> list2) {
        // 先将两个列表合并
        List<CompetitionProblems> combinedList = new ArrayList<>();
        combinedList.addAll(list1);
        combinedList.addAll(list2);

        // 使用 Stream 去重并找出不同项
        return combinedList.stream()
                .filter(item -> Collections.frequency(combinedList, item) == 1)
                .collect(Collectors.toList());
    }
    private Competitions competitionSetCompetition(CompetitionAddRequest competitionAddRequest) {
        Competitions competition = new Competitions();
        competition.setCompetition_id(competitionAddRequest.getCompetition_id());
        competition.setCompetition_name(competitionAddRequest.getCompetition_name());
        competition.setStart_time(competitionAddRequest.getStart_time());
        competition.setEnd_time(competitionAddRequest.getEnd_time());
        competition.setAvatar(competitionAddRequest.getAvatar());
        competition.setDescription(competitionAddRequest.getDescription());
        // MD5加密方式
        if (competitionAddRequest.getStatus() != null && competitionAddRequest.getStatus() == 1) {
            competition.setPassword(DigestUtils.md5DigestAsHex((SALT + competitionAddRequest.getPassword()).getBytes()));
        }
        competition.setCreated_by(competitionAddRequest.getCreated_by());
        competition.setPattern(competitionAddRequest.getPattern());
        competition.setStatus(competitionAddRequest.getStatus());
        if (competition.getStart_time() == null || competition.getEnd_time() == null) {
            Date date = new Date();
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.HOUR_OF_DAY,2);
            Date newDate = calendar.getTime();
            competition.setStart_time(date);

            competition.setEnd_time(newDate);
        }
        QueryWrapper<Competitions> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("competition_id", competition.getCompetition_id());
        int count = competitionsMapper.update(competition, queryWrapper);
        if (count == 0) {
            competitionsMapper.insert(competition);
        }
        return competition;
    }

    /**
     * 获取脱敏竞赛信息
     *
     * @param competition 竞赛信息
     * @param uuid 用户id
     * @return 脱敏竞赛信息
     */
    private CompetitionInfoVo getCompetitionInfoVo(Competitions competition, Long uuid) {
        CompetitionInfoVo competitionInfoVo = new CompetitionInfoVo();
        competitionInfoVo.setCompetition_id(competition.getCompetition_id());
        competitionInfoVo.setCompetition_name(competition.getCompetition_name());
        competitionInfoVo.setStart_time(competition.getStart_time());
        competitionInfoVo.setEnd_time(competition.getEnd_time());
        competitionInfoVo.setAvatar(competition.getAvatar());
        competitionInfoVo.setDescription(competition.getDescription());
        competitionInfoVo.setJoins(competition.getJoins());
        competitionInfoVo.setIs_delete(competition.getIs_delete());

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", competition.getCreated_by());

        User user = userMapper.selectOne(queryWrapper);
        Date nowDate = new Date();

        if (uuid == -1) {
            if (nowDate.after(competition.getEnd_time())) {
                competitionInfoVo.setUser_status(4);
            } else if (nowDate.after(competition.getStart_time())){
                competitionInfoVo.setUser_status(2);
            } else {
                competitionInfoVo.setUser_status(1);
            }
        } else {
            QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();
            competitionsUserQueryWrapper.eq("uuid", uuid);
            competitionsUserQueryWrapper.eq("competition_id", competition.getCompetition_id());


            CompetitionsUser competitionsUser = competitionsUserMapper.selectOne(competitionsUserQueryWrapper);

            if (competitionsUser == null) {
                if (nowDate.after(competition.getEnd_time())) {
                    competitionInfoVo.setUser_status(5);
                } else if (nowDate.after(competition.getStart_time())){
                    competitionInfoVo.setUser_status(2);
                } else {
                    competitionInfoVo.setUser_status(1);
                }
            } else {
                if (nowDate.after(competition.getEnd_time())) {
                    if (competitionsUser.getIs_participant() == 0) {
                        competitionInfoVo.setUser_status(4);
                    } else {
                        competitionInfoVo.setUser_status(5);
                    }

                } else if (nowDate.after(competition.getStart_time())){
                    if (competitionsUser.getIs_participant().equals(0)){
                        competitionInfoVo.setUser_status(3);
                    } else {
                        competitionInfoVo.setUser_status(2);
                    }
                } else{
                    competitionInfoVo.setUser_status(competitionsUser.getIs_participant());
                }
            }
        }

        if (Objects.equals(user.getUuid(), uuid)) {
            competitionInfoVo.setIsCreated(0);
        } else {
            competitionInfoVo.setIsCreated(1);
        }
        competitionInfoVo.setUsername(user.getUsername());
        competitionInfoVo.setPattern(competition.getPattern());
        competitionInfoVo.setStatus(competition.getStatus());
        return competitionInfoVo;
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
     * 导出排名Excel表格
     *
     * @param competitionRankVo 脱敏后的竞赛信息
     */
    @SneakyThrows
    private void SetRankExcel(String competitionName, CompetitionRankVo competitionRankVo, HttpServletResponse httpServletResponse){
        List<CompetitionRankDetailVo> rankUserList = competitionRankVo.getRank_user_list();
        List<CompetitionProblemInfo> problemList = competitionRankVo.getProblem_list();
        String fileName = URLEncoder.encode(competitionName + "排行榜成员名单" + ".xlsx", StandardCharsets.UTF_8);
        httpServletResponse.setContentType("application/vnd.ms-excel;charset=utf-8");
        httpServletResponse.setCharacterEncoding("utf-8");
        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=" + fileName);
        EasyExcel.write(httpServletResponse.getOutputStream())
                .head(head(competitionName + "排行榜成员名单", problemList))
                .excelType(ExcelTypeEnum.XLSX)
                //自动列宽
                .registerWriteHandler(new LongestMatchColumnWidthStyleStrategy())
                .autoCloseStream(Boolean.TRUE)
                .sheet("Sheet1")
                //对应的列数据
                .doWrite(dataList(rankUserList));
    }

    /**
     * 自定义表头部
     *
     * @return
     */
    private static List<List<String>> head(String competitionName, List<CompetitionProblemInfo> problemList) {
        //两排说明油两个头
        List<List<String>> list = new ArrayList<>();
        List<String> list1 = new ArrayList<>();
        List<String> list2 = new ArrayList<>();
        List<String> list3 = new ArrayList<>();
        List<String> list4 = new ArrayList<>();
        List<String> list5 = new ArrayList<>();
        list1.add(competitionName);
        list1.add("排名");
        list2.add(competitionName);
        list2.add("用户名");
        list3.add(competitionName);
        list3.add("学校");
        list4.add(competitionName);
        list4.add("通过数");
        list5.add(competitionName);
        list5.add("罚时");
        list.add(list1);
        list.add(list2);
        list.add(list3);
        list.add(list4);
        list.add(list5);

        if (problemList.isEmpty()) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "此竞赛不存在题目，请重新选择！！！");
        }

        problemList.forEach((problem)->{
            List<String> list0 = new ArrayList<>();
            list0.add(problem.getIndex());
            list.add(list0);
        });


        return list;
    }

    private static List<List<Object>> dataList(List<CompetitionRankDetailVo> rankList) {
        List<List<Object>> list = new ArrayList<>();
        for (int item = 0; item < rankList.size(); item++) {
            CompetitionRankDetailVo rankUser = rankList.get(item);
            List<Object> list1 = new ArrayList<>();
            list1.add(String.valueOf(item + 1));
            list1.add(rankUser.getUsername());
            list1.add(rankUser.getSchool());
            list1.add(String.valueOf(rankUser.getAc_num()));
            list1.add(rankUser.getTime_penalty());

            int size = rankUser.getProblem_record_list().size();
            for(int j = 0; j < size; j ++) {
                Object result = rankUser.getProblem_record_list().get(j).getResult();
                if (Objects.equals("Accepted", result)) {
                    if (rankUser.getProblem_record_list().get(j).getTest_num() != null) {
                        list1.add("-" + rankUser.getProblem_record_list().get(j).getTest_num());
                    } else {
                        list1.add("-0");
                    }
                } else {
                    list1.add(" ");
                }
            }
            list.add(list1);
        }
        return list;
    }
}