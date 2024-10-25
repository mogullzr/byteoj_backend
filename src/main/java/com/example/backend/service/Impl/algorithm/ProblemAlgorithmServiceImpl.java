package com.example.backend.service.Impl.algorithm;

import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.alibaba.nacos.shaded.com.google.common.reflect.TypeToken;
import com.alibaba.nacos.shaded.com.google.gson.Gson;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmLimit;
import com.example.backend.models.domain.algorithm.submission.SubmissionAlgorithmDetails;
import com.example.backend.models.domain.algorithm.submission.SubmissionAlgorithmRecords;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTags;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTagsClassify;
import com.example.backend.models.domain.algorithm.tag.ProblemAlgorithmTagsRelation;
import com.example.backend.models.domain.algorithm.test.AlgorithmTestCase;
import com.example.backend.models.domain.competiton.CompetitionAcProblemsAlgorithm;
import com.example.backend.models.domain.competiton.Competitions;
import com.example.backend.models.domain.competiton.CompetitionsProblemsAlgorithm;
import com.example.backend.models.domain.competiton.CompetitionsUser;
import com.example.backend.models.domain.judge.Judge;
import com.example.backend.models.domain.judge.JudgeDataType;
import com.example.backend.models.request.JudgeRequest;
import com.example.backend.models.request.ProblemAlgorithmTestCaseRequest;
import com.example.backend.models.vo.*;
import com.example.backend.models.vo.competition.CompetitionProblemsVo;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import com.example.backend.models.domain.algorithm.*;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.ProblemAlgorithmRequest;
import com.example.backend.service.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.bouncycastle.asn1.ocsp.ResponseData;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
    private ProblemAlgorithmTagsClassifyMapper problemAlgorithmTagsClassifyMapper;

    @Resource ProblemAlgorithmTagsClassifyRelationMapper problemAlgorithmTagsClassifyRelationMapper;
    @Resource
    private ProblemAlgorithmBankMapper problemAlgorithmBankMapper;
    @Resource
    ProblemAlgorithmLimitMapper problemAlgorithmLimitMapper;

    @Resource
    CompetitionAcProblemsAlgorithmMapper competitionAcProblemsAlgorithmMapper;
    @Resource
    AlgorithmTestCaseMapper algorithmTestCaseMapper;
    @Resource
    SubmissionsAlgorithmMapper submissionsAlgorithmMapper;

    @Resource
    CompetitionsProblemsAlgorithmMapper competitionsProblemsAlgorithmMapper;
    @Resource
    CompetitionsMapper competitionsMapper;
    @Resource
    CompetitionsUserMapper competitionsUserMapper;
    @Resource
    SubmissionAlgorithmDetailsMapper submissionAlgorithmDetailsMapper;

    @Resource
    SubmissionAlgorithmRecordsMapper submissionAlgorithmRecordsMapper;
    @Resource
    private UserMapper userMapper;
    @Resource
    private UserService userService;

    @Resource
    private RestTemplate restTemplate;
    @Override
    public List<ProblemAlgorithmBankVo> problemAlgorithmSearchAll(Integer uuid, HttpServletRequest httpServletRequest) {
        QueryWrapper<ProblemAlgorithmBank> queryWrapper = new QueryWrapper<>();

        List<ProblemAlgorithmBank> problemAlgorithmList = this.list();
        List<ProblemAlgorithmBankVo> problemAlgorithmVoList = new ArrayList<>();
        for (int item = 0; item < problemAlgorithmList.size(); item++) {
            List<String> problemAlgorithmTags = getProblemAlgorithmTags(problemAlgorithmList.get(item).getProblem_id(), 0);
            problemAlgorithmVoList.add(getProblemAlgorithmVO(problemAlgorithmList.get(item), uuid, problemAlgorithmTags));
        }
        return problemAlgorithmVoList;
    }
//    SELECT  id,problem_id,stdout_max,stderr_max,cpu_limit,
//    memory_limit,proc_limit,create_by_id,create_by_name,create_time,
//    update_time,update_by_id,update_by_name,status,is_delete
//    FROM problem_algorithm_limit      WHERE  (problem_id = ? AND is_delete = ?)
    @Override
    public List<ProblemAlgorithmBankVo> problemAlgorithmSearchByPage(Integer uuid, Integer PageNum, boolean isAdmin) {
        Page<ProblemAlgorithmBank> page = new Page<>(PageNum, 50);
        QueryWrapper<ProblemAlgorithmBank> queryWrapper = new QueryWrapper<>();
        if (!isAdmin) {
            queryWrapper.eq("is_delete", 0);
        }
        List<ProblemAlgorithmBank> problemAlgorithmList = problemAlgorithmBankMapper.selectPage(page, queryWrapper).getRecords();

        List<ProblemAlgorithmBankVo> problemAlgorithmVoList = new ArrayList<>();
        for (int item = 0; item < problemAlgorithmList.size(); item++) {
            List<String> problemAlgorithmTags = getProblemAlgorithmTags(problemAlgorithmList.get(item).getProblem_id(), 0);
            problemAlgorithmVoList.add(getProblemAlgorithmVO(problemAlgorithmList.get(item), uuid, problemAlgorithmTags));
        }
        return problemAlgorithmVoList;
    }

    @Override
    public List<SubmissionsAlgorithmRecordsVo> problemAlgorithmRecordsAllByUuidByPage(Long uuid, Long PageNum) {
        Page<SubmissionsAlgorithm> page = new Page<>(PageNum, 15);
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


        if (competition_id != -1) {
            QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
            competitionsQueryWrapper.eq("competition_id", competition_id);
            Competitions competitions = competitionsMapper.selectOne(competitionsQueryWrapper);
            if (competitions == null) {
                throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "竞赛不存在！！！");
            }

            Date currentDate = new Date();
            if (!Objects.equals(submissionsAlgorithm.getUuid(), uuid) && !isAdmin && competitions.getEnd_time().after(currentDate)) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有查看该记录的权限");
            }
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
    public List<ProblemAlgorithmBankVo> problemAlgorithmSearchByTagId(Long PageNum, Integer tag_id, Long uuid) {
        Page<ProblemAlgorithmTags> page = new Page<>(PageNum, 50);
        QueryWrapper<ProblemAlgorithmTags> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("tag_id", tag_id);

        List<ProblemAlgorithmTags> problemAlgorithmTagsList = problemAlgorithmTagsMapper.selectPage(page, queryWrapper).getRecords();
        List<ProblemAlgorithmBank> problemAlgorithmList = new ArrayList<>();

        for (ProblemAlgorithmTags problemAlgorithmTag : problemAlgorithmTagsList) {
            QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
            problemAlgorithmBankQueryWrapper.eq("problem_id", problemAlgorithmTag.getProblem_id());
            problemAlgorithmBankQueryWrapper.eq("is_delete", 0);
            problemAlgorithmList.add(problemAlgorithmBankMapper.selectOne(problemAlgorithmBankQueryWrapper));
        }

        List<ProblemAlgorithmBankVo> problemAlgorithmVoList = new ArrayList<>();
        for (ProblemAlgorithmBank problemAlgorithmBank : problemAlgorithmList) {
            List<String> problemAlgorithmTags = getProblemAlgorithmTags(problemAlgorithmBank.getProblem_id(), 0);
            problemAlgorithmVoList.add(getProblemAlgorithmVO(problemAlgorithmBank, Math.toIntExact(uuid), problemAlgorithmTags));
        }

        return problemAlgorithmVoList;
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
    public List<ProblemTagsVo> problemAlgorithmGetTagsPlusCategory() {
        List<ProblemTagsVo> tagsVoLists = new ArrayList<>();
        LinkedHashMap<String, Integer> category_relation = new LinkedHashMap<>();
        problemAlgorithmTagsClassifyRelationMapper.selectList(null).forEach((classifyRelation)->{
            category_relation.put(classifyRelation.getCategory_name(), classifyRelation.getCategory_id());
        });

        for (String key : category_relation.keySet()) {
            List<Integer> list = new ArrayList<>();
            ProblemTagsVo problemTagsVo = new ProblemTagsVo();
            Integer category_id = category_relation.get(key);

            problemTagsVo.setCategory(key);
            QueryWrapper<ProblemAlgorithmTagsClassify> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("category",category_id);
            problemAlgorithmTagsClassifyMapper.selectList(queryWrapper).forEach((classify)->{
                list.add(classify.getTag_id());
            });
            List<ProblemAlgorithmTagsRelation> problemAlgorithmTagsRelationList = problemAlgorithmTagsRelationMapper.selectBatchIds(list);
            List<String> tag_list = new ArrayList<>();
            problemAlgorithmTagsRelationList.forEach((tagRelation)->{
                tag_list.add(tagRelation.getTag_name());
            });
            problemTagsVo.setTag_list(tag_list);
            tagsVoLists.add(problemTagsVo);
        }

        return tagsVoLists;
    }


    @Override
    public ProblemAlgorithmBankVo problemSearchByProblemId(Integer problem_id, HttpServletRequest httpServletRequest) {
        ProblemAlgorithmBank problemAlgorithmBank = getProblemAlgorithmBank(Long.valueOf(problem_id), 0);

        if (problemAlgorithmBank == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "此题目不存在或者题目或已经被隐藏");
        }
        List<String> tagsList = getProblemAlgorithmTags(problemAlgorithmBank.getProblem_id(), 0);
        return getProblemAlgorithmVO(problemAlgorithmBank, -1, tagsList);
    }

    @Override
    public List<CompetitionProblemsVo> competitionSearchProblems(Long competition_id, Long uuid) {
        QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
        QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
        competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", competition_id);
        List<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmList = competitionsProblemsAlgorithmMapper.selectList(competitionsProblemsAlgorithmQueryWrapper);
        List<CompetitionProblemsVo> problemAlgorithmBankVoList = new ArrayList<>();

        if (competitionsProblemsAlgorithmList == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "该竞赛不存在或者，该竞赛不存在题目？？？系统出错了！！！联系管理员！！！898561494@qq.com");
        }

        QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();
        competitionsUserQueryWrapper.eq("competition_id", competition_id);
        competitionsUserQueryWrapper.eq("uuid", uuid);
        competitionsUserQueryWrapper.eq("is_participant", 0);
        if (competitionsUserMapper.selectOne(competitionsUserQueryWrapper) == null) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你还没有报名比赛，拒绝访问题目！！！");
        }

        competitionsQueryWrapper.eq("competition_id", competition_id);
        Competitions competitions = competitionsMapper.selectOne(competitionsQueryWrapper);
        Date competitionDate = competitions.getStart_time();
        Date date = new Date();
        if (date.before(competitionDate)) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "比赛时间还没到，请自重！！！");
        }
        competitionsProblemsAlgorithmList.forEach((problem)->{
            CompetitionProblemsVo competitionProblemsVo = new CompetitionProblemsVo();
            competitionProblemsVo.setIndex(problem.getIdx());
            competitionProblemsVo.setProblem_name(problem.getProblem_name());
            competitionProblemsVo.setAc_total(problem.getAc_total());
            competitionProblemsVo.setTest_total(problem.getTest_total());

            QueryWrapper<CompetitionAcProblemsAlgorithm> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("competition_id", problem.getCompetition_id());
            queryWrapper.eq("idx", problem.getIdx());
            queryWrapper.eq("uuid", uuid);

            CompetitionAcProblemsAlgorithm competitionAcProblemsAlgorithm = competitionAcProblemsAlgorithmMapper.selectOne(queryWrapper);
            if (Objects.isNull(competitionAcProblemsAlgorithm)) {
                competitionProblemsVo.setStatus(1);
            } else {
                competitionProblemsVo.setStatus(competitionAcProblemsAlgorithm.getAfter_status());
            }
            problemAlgorithmBankVoList.add(competitionProblemsVo);
        });
        return problemAlgorithmBankVoList;
    }


    @Override
    public ProblemAlgorithmBankVo competitionSearchProblem(Long competition_id, String index, Long uuid) {
        // 查看是否允许查找相关竞赛的题目
        QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
        competitionsQueryWrapper.eq("competition_id", competition_id);
        Competitions competition = competitionsMapper.selectOne(competitionsQueryWrapper);
        if (competition == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "竞赛不存在");
        }

        // 判断当前用户是否参加改比赛
        QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();
        competitionsUserQueryWrapper.eq("uuid", uuid);
        competitionsUserQueryWrapper.eq("competition_id", competition_id);
        CompetitionsUser competitionsUser = competitionsUserMapper.selectOne(competitionsUserQueryWrapper);
        if (competitionsUser == null || competitionsUser.getIs_participant() == 1) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有报名比赛");
        }
        // 观察时间判断是否运行查看题目
        Date currentDate = new Date();
        if (currentDate.before(competition.getStart_time())) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，比赛还没有开始，请自重");
        }


        QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
        competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", competition_id);
        competitionsProblemsAlgorithmQueryWrapper.eq("idx", index);

        CompetitionsProblemsAlgorithm competitionsProblemsAlgorithm = competitionsProblemsAlgorithmMapper.selectOne(competitionsProblemsAlgorithmQueryWrapper);
        if (competitionsProblemsAlgorithm == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "这道题目不存在");
        }

        Long problem_id = competitionsProblemsAlgorithm.getProblem_id();
        ProblemAlgorithmBank problemAlgorithmBank = getProblemAlgorithmBank(problem_id, 1);
        if (problemAlgorithmBank == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这道题目的信息");
        }
        problemAlgorithmBank.setChinese_name(competitionsProblemsAlgorithm.getProblem_name());


        List<String> tagsList = getProblemAlgorithmTags(problem_id, 1);
        ProblemAlgorithmBankVo problemAlgorithmVO = getProblemAlgorithmVO(problemAlgorithmBank, -1, tagsList);
        problemAlgorithmVO.setProblem_id(null);
        problemAlgorithmVO.setIndex(index);
        return problemAlgorithmVO;
    }

    @Override
    public List<ProblemAlgorithmBankVo> problemSearchByKeyword(String keyword, Long uuid, Long PageNum, boolean isAdmin) {
        if (Objects.equals(keyword, "")) {
            return problemAlgorithmSearchByPage(Math.toIntExact(uuid), Math.toIntExact(PageNum), isAdmin);
        }
        int SinglePageNum = 50;
        // 优先展示标签中匹配项
        Page<ProblemAlgorithmTags> page_1 = new Page<>(PageNum, 50);
        QueryWrapper<ProblemAlgorithmTagsRelation> problemAlgorithmTagsRelationQueryWrapper = new QueryWrapper<>();
        problemAlgorithmTagsRelationQueryWrapper.or().like("tag_name", keyword);
        List<ProblemAlgorithmTagsRelation> problemAlgorithmTagsRelationList = problemAlgorithmTagsRelationMapper.selectList(problemAlgorithmTagsRelationQueryWrapper);
        List<ProblemAlgorithmBankVo> problemAlgorithmBankVoList = new ArrayList<>();

        for (int item = 0; item < problemAlgorithmTagsRelationList.size(); item ++) {
            Integer tag_id = problemAlgorithmTagsRelationList.get(item).getTag_id();

            //
            List<ProblemAlgorithmBankVo> problemAlgorithmBankVoList1 = problemAlgorithmSearchByTagId(PageNum, tag_id, uuid);
            Integer Size = problemAlgorithmBankVoList1.size();
            if (SinglePageNum >= Size) {
                problemAlgorithmBankVoList.addAll(problemAlgorithmBankVoList1);
                SinglePageNum -= Size;
            } else {
                for (int j = 0; j < Size; j++) {
                    problemAlgorithmBankVoList.add(problemAlgorithmBankVoList1.get(j));
                }
                SinglePageNum = 0;
                break;
            }
        }

        // 如果标签中都没有匹配的再在名字中模糊查询寻找匹配项
        if (SinglePageNum != 0) {
            QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
            if (!isAdmin) {
                problemAlgorithmBankQueryWrapper.eq("is_delete", 0);
            }
            problemAlgorithmBankQueryWrapper.or().like("chinese_name", keyword);
            problemAlgorithmBankQueryWrapper.or().like("english_name", keyword);
            problemAlgorithmBankQueryWrapper.or().like("short_name", keyword);
            List<ProblemAlgorithmBank> problemAlgorithmBankList = problemAlgorithmBankMapper.selectList(problemAlgorithmBankQueryWrapper);
            for (int item = 0; item < problemAlgorithmBankList.size(); item++) {
                if (SinglePageNum == 0) break;
                int status = 0;
                if (isAdmin) {
                    status = 1;
                }
                List<String> problemAlgorithmTags = getProblemAlgorithmTags(problemAlgorithmBankList.get(item).getProblem_id(), status);
                problemAlgorithmBankVoList.add(getProblemAlgorithmVO(problemAlgorithmBankList.get(item), Math.toIntExact(uuid), problemAlgorithmTags));
                SinglePageNum--;
            }
        }

        return problemAlgorithmBankVoList;
    }

    @Override
    public List<ProblemAlgorithmBankVo> problemSearchByDifficulty(Integer PageNum, String difficulty, Integer uuid, HttpServletRequest httpServletRequest) {
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        Page<ProblemAlgorithmBank> page = new Page<>(PageNum, 50);
        QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
        problemAlgorithmBankQueryWrapper.eq("difficulty_name", difficulty);
        if (!isAdmin) {
            problemAlgorithmBankQueryWrapper.eq("is_delete", 0);
        }

        List<ProblemAlgorithmBank> problemAlgorithmBankList = problemAlgorithmBankMapper.selectPage(page, problemAlgorithmBankQueryWrapper).getRecords();
        List<ProblemAlgorithmBankVo> problemAlgorithmBankVoList = new ArrayList<>();

        for (int item = 0; item < problemAlgorithmBankList.size(); item++) {
            List<String> problemAlgorithmTags = getProblemAlgorithmTags(problemAlgorithmBankList.get(item).getProblem_id(), 0);
            problemAlgorithmBankVoList.add(getProblemAlgorithmVO(problemAlgorithmBankList.get(item), uuid, problemAlgorithmTags));
        }

        return problemAlgorithmBankVoList;
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
    public Long problemSearchByDifficultyAndUuid(String difficulty, Long uuid) {
        QueryWrapper<AcAlgorithmProblem> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("difficulty_name", difficulty);
        queryWrapper.eq("status", 1);
        queryWrapper.eq("user_id", uuid);

        return acAlgorithmProblemMapper.selectCount(queryWrapper);
    }

    @Override
    public List<SubmissionsAlgorithmRecordsVo> problemRecordsByUuidAndProblemIdByPage(Long problem_id, Long uuid, Long PageNum) {
        Page<SubmissionsAlgorithm> page = new Page<>(PageNum, 10);
        QueryWrapper<SubmissionsAlgorithm> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);
        queryWrapper.eq("uuid", uuid);

        List<SubmissionsAlgorithm> submissionsAlgorithm = submissionsAlgorithmMapper.selectPage(page, queryWrapper).getRecords();
        List<SubmissionsAlgorithmRecordsVo> submissionsAlgorithmRecordsVoList = new ArrayList<>();

        for (int item = 0; item < submissionsAlgorithm.size(); item++) {
            QueryWrapper<SubmissionAlgorithmDetails> submissionAlgorithmDetailsQueryWrapper = new QueryWrapper<>();
            submissionAlgorithmDetailsQueryWrapper.eq("submission_id", submissionsAlgorithm.get(item).getSubmission_id());

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
    public Boolean problemAdd(ProblemAlgorithmRequest problemAlgorithmRequest, boolean isAdmin, Long uuid, String username, Integer status, HttpServletRequest httpServletRequest) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您的权限不足");
        }

        Long problem_id = problemAlgorithmRequest.getProblem_id();
        String Chinese_name = problemAlgorithmRequest.getChinese_name();
        String English_name = problemAlgorithmRequest.getEnglish_name();
        Integer CPU_limit = problemAlgorithmRequest.getCpu_limit();
        Long create_id = problemAlgorithmRequest.getCreate_by_id();
        String create_name = problemAlgorithmRequest.getCreate_by_name();
        String difficulty_name = problemAlgorithmRequest.getDifficulty_name();
        String description = problemAlgorithmRequest.getDescription();
        Integer Memory_limit = problemAlgorithmRequest.getMemory_limit();
        Date create_time = new Date();
        // 基本的一些判空工作
        if (problem_id == null
                || Chinese_name == null
                || CPU_limit == null
                || create_id == null
                || difficulty_name == null
                || description == null
                || Memory_limit == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "必填项不允许为空！！！");
        }

        assert create_id == null;
        if (!create_id.equals(uuid)) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "系统错误！！！！你是谁？？？");
        }
        // 1.problem_id判别
        if (1 > problem_id) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题号设置不可小于1");
        }

        ProblemAlgorithmBank isExist = getProblemAlgorithmBank(problem_id, 1);
        if (isExist != null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题号已存在");
        }

        Pattern pattern = Pattern.compile("[\u4e00-\u9fa5]+");
        // 2.Chinese_name判别
        // 无需检验

        // 3.English_name判别
        if (English_name != null) {
            Matcher English_matcher = pattern.matcher(English_name);
            if (English_matcher.matches()) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "英文名不允许包含中文");
            }
        }

        // 4.判断create_id是否存在
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("uuid", create_id);
        Long count = userMapper.selectCount(userQueryWrapper);
        if (count == 0) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "错误错误，用户不存在！！！");
        }

        // 5.其他的后续继续更新.....

        // 6.将题目信息插入到各个表中去

        // problem_algorithm_bank
        ProblemAlgorithmBank problemAlgorithmBank = new ProblemAlgorithmBank();
        problemAlgorithmBank.setProblem_id(problem_id);
        problemAlgorithmBank.setChinese_name(Chinese_name);
        problemAlgorithmBank.setDescription(description);
        problemAlgorithmBank.setCreate_time(create_time);
        problemAlgorithmBank.setCreate_by_id(create_id);
        problemAlgorithmBank.setCreate_by_name(create_name);
        problemAlgorithmBank.setDifficulty_name(difficulty_name);
        problemAlgorithmBank.setShort_name(problemAlgorithmRequest.getShort_name());
        problemAlgorithmBank.setSource_name(problemAlgorithmRequest.getSource_name());
        problemAlgorithmBank.setAc_total(0);
        problemAlgorithmBank.setTest_total(0);
        // 表示这时候管理员在竞赛模式下创建题目，需要暂时隐藏题目
        if (status != null && status == 0) {
            problemAlgorithmBank.setIs_delete(1);
        }
        try {
            this.save(problemAlgorithmBank);
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题号已存在，暂时处于竞赛模拟状态中");
        }


        // problem_algorithm_limit
        ProblemAlgorithmLimit problemAlgorithmLimit = new ProblemAlgorithmLimit();
        problemAlgorithmLimit.setProblem_id(problem_id);
        problemAlgorithmLimit.setCpu_limit(CPU_limit);
        problemAlgorithmLimit.setMemory_limit(Memory_limit);
        problemAlgorithmLimit.setCreate_by_id(uuid);
        problemAlgorithmLimit.setCreate_by_name(username);

        // 表示这时候管理员在竞赛模式下创建题目，需要暂时隐藏题目
        if (status != null && status == 0) {
            problemAlgorithmLimit.setIs_delete(1);
        }

        problemAlgorithmLimitMapper.insert(problemAlgorithmLimit);

        // problem_algorithm_tags
        List<Integer> tagsList = problemAlgorithmRequest.getTags_list();
        int length = tagsList.size();

        for (int item = 0; item < length; item++) {
            ProblemAlgorithmTags problemAlgorithmTags = new ProblemAlgorithmTags();
            Integer tag_id = tagsList.get(item);
            QueryWrapper<ProblemAlgorithmTagsRelation> problemAlgorithmTagsRelationQueryWrapper = new QueryWrapper<>();
            problemAlgorithmTagsRelationQueryWrapper.eq("tag_id", tag_id);

            Long result = problemAlgorithmTagsRelationMapper.selectCount(problemAlgorithmTagsRelationQueryWrapper);
            if (result == 0) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "不存在这样的算法标签，请重新添加");
            }

            problemAlgorithmTags.setProblem_id(problem_id);
            problemAlgorithmTags.setTag_id(tag_id);


            // 表示这时候管理员在竞赛模式下创建题目，需要暂时隐藏题目
            if (status != null && status == 0) {
                problemAlgorithmTags.setIs_delete(1);
            }
            problemAlgorithmTagsMapper.insert(problemAlgorithmTags);
        }

        return true;
    }

    @Override
    public Boolean problemDelete(Long problem_id, boolean isAdmin, HttpServletRequest httpServletRequest) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有权限");
        }

        ProblemAlgorithmBank isExist = getProblemAlgorithmBank(problem_id, 0);
        if (isExist == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的题目或题目已被隐藏");
        }

        // problem_algorithm_limit
        QueryWrapper<ProblemAlgorithmLimit> problemAlgorithmLimitQueryWrapper = new QueryWrapper<>();
        problemAlgorithmLimitQueryWrapper.eq("problem_id", problem_id);
        problemAlgorithmLimitQueryWrapper.eq("is_delete", 0);
        ProblemAlgorithmLimit problemAlgorithmLimit = problemAlgorithmLimitMapper.selectOne(problemAlgorithmLimitQueryWrapper);
        problemAlgorithmLimit.setIs_delete(1);
        problemAlgorithmLimitMapper.update(problemAlgorithmLimit, problemAlgorithmLimitQueryWrapper);

        // problem_algorithm_bank
        QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
        problemAlgorithmBankQueryWrapper.eq("problem_id", problem_id);
        problemAlgorithmBankQueryWrapper.eq("is_delete", 0);
        isExist.setIs_delete(1);
        problemAlgorithmBankMapper.update(isExist, problemAlgorithmBankQueryWrapper);

        // problem_algorithm_tags
        QueryWrapper<ProblemAlgorithmTags> problemAlgorithmTagsQueryWrapper = new QueryWrapper<>();
        problemAlgorithmTagsQueryWrapper.eq("problem_id", problem_id);
        problemAlgorithmTagsQueryWrapper.eq("is_delete", 0);
        ProblemAlgorithmTags problemAlgorithmTags = problemAlgorithmTagsMapper.selectOne(problemAlgorithmTagsQueryWrapper);
        isExist.setIs_delete(1);
        problemAlgorithmTagsMapper.update(problemAlgorithmTags, problemAlgorithmTagsQueryWrapper);

        return true;
    }

    @Override
    public Boolean problemModify(ProblemAlgorithmRequest problemAlgorithmRequest, boolean isAdmin, HttpServletRequest httpServletRequest) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有修改权限");
        }
        Long problem_id = problemAlgorithmRequest.getProblem_id();
        String Chinese_name = problemAlgorithmRequest.getChinese_name();
        Integer CPU_limit = problemAlgorithmRequest.getCpu_limit();

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long update_id = loginUser.getUuid();
        String update_name = loginUser.getUsername();

        String difficulty_name = problemAlgorithmRequest.getDifficulty_name();
        String description = problemAlgorithmRequest.getDescription();
        Integer Memory_limit = problemAlgorithmRequest.getMemory_limit();

        // 基本的一些判空工作
        if (problem_id == null
                || Chinese_name == null
                || CPU_limit == null
                || update_id == null
                || update_name == null
                || difficulty_name == null
                || description == null
                || Memory_limit == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "必填项不允许为空！！！");
        }

        // 1.problem_id判别
        if (1 >= problem_id) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "题号设置不可小于1");
        }

        ProblemAlgorithmBank isExist = getProblemAlgorithmBank(problem_id, 1);
        if (isExist == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "不存在此题，无法修改");
        }

        Pattern pattern = Pattern.compile("[\u4e00-\u9fa5]+");
        // 2.Chinese_name判别
        // 无需检验

        // 3.English_name判别
//        Matcher English_matcher = pattern.matcher(English_name);
//        if (English_matcher.matches()) {
//            throw new BusinessException(ErrorCode.PARAMS_ERROR, "英文名不允许包含中文");
//        }

        // 4.判断update_id是否存在
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("uuid", update_id);
        Long count = userMapper.selectCount(userQueryWrapper);
        if (count == 0) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "错误错误，用户不存在！！！");
        }

        // 5.其他的后续继续更新.....

        // 6.将题目信息进行修改

        // problem_algorithm_bank
        ProblemAlgorithmBank problemAlgorithmBank = new ProblemAlgorithmBank();
        QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();
        problemAlgorithmBankQueryWrapper.eq("problem_id", problem_id);
        ProblemAlgorithmBank problem = getProblemAlgorithmBank(problem_id, 1);

        problemAlgorithmBank.setProblem_id(problem_id);
        problemAlgorithmBank.setChinese_name(Chinese_name);
        problemAlgorithmBank.setDescription(description);
        problemAlgorithmBank.setCreate_time(problem.getCreate_time());
        problemAlgorithmBank.setCreate_by_id(problem.getCreate_by_id());
        problemAlgorithmBank.setCreate_by_name(problem.getCreate_by_name());
        problemAlgorithmBank.setUpdate_time(new Date());
        problemAlgorithmBank.setUpdate_by_id(update_id);
        problemAlgorithmBank.setUpdate_by_name(update_name);
        problemAlgorithmBank.setDifficulty_name(difficulty_name);
        problemAlgorithmBank.setShort_name(problemAlgorithmRequest.getShort_name());
        problemAlgorithmBank.setAc_total(problem.getAc_total());
        problemAlgorithmBank.setTest_total(problem.getTest_total());

        problemAlgorithmBankMapper.update(problemAlgorithmBank, problemAlgorithmBankQueryWrapper);

        // problem_algorithm_limit
        ProblemAlgorithmLimit problemAlgorithmLimit = new ProblemAlgorithmLimit();
        QueryWrapper<ProblemAlgorithmLimit> problemAlgorithmLimitQueryWrapper = new QueryWrapper<>();
        problemAlgorithmLimitQueryWrapper.eq("problem_id", problem_id);

        problemAlgorithmLimit.setProblem_id(problem_id);
        problemAlgorithmLimit.setCpu_limit(CPU_limit);
        problemAlgorithmLimit.setCreate_by_id(problem.getCreate_by_id());
        problemAlgorithmLimit.setCreate_by_name(problem.getCreate_by_name());
        problemAlgorithmLimit.setUpdate_by_id(update_id);
        problemAlgorithmLimit.setUpdate_by_name(update_name);

        problemAlgorithmLimitMapper.update(problemAlgorithmLimit, problemAlgorithmLimitQueryWrapper);

        // problem_algorithm_tags
        List<Integer> tagsList = problemAlgorithmRequest.getTags_list();
        int length = tagsList.size();

        for (int item = 0; item < length; item++) {
            ProblemAlgorithmTags problemAlgorithmTags = new ProblemAlgorithmTags();
            Integer tag_id = tagsList.get(item);
            QueryWrapper<ProblemAlgorithmTagsRelation> problemAlgorithmTagsRelationQueryWrapper = new QueryWrapper<>();
            problemAlgorithmTagsRelationQueryWrapper.eq("tag_id", tag_id);

            Long result = problemAlgorithmTagsRelationMapper.selectCount(problemAlgorithmTagsRelationQueryWrapper);
            if (result == 0) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "不存在这样的算法标签，请重新添加");
            }

            problemAlgorithmTags.setProblem_id(problem_id);
            problemAlgorithmTags.setTag_id(tag_id);

            QueryWrapper<ProblemAlgorithmTags> problemAlgorithmTagsQueryWrapper = new QueryWrapper<>();
            problemAlgorithmTagsQueryWrapper.eq("problem_id", problem_id);

            problemAlgorithmTagsMapper.update(problemAlgorithmTags, problemAlgorithmTagsQueryWrapper);
        }
        return true;
    }

    @Override
    public Boolean problemTestCaseAdd(List<ProblemAlgorithmTestCaseRequest> problemAlgorithmTestCaseRequestList, boolean isAdmin, Long problem_id) {
        if (!isAdmin){
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您的权限不足");
        }

        QueryWrapper<AlgorithmTestCase> algorithmTestCaseQueryWrapper = new QueryWrapper<>();
        algorithmTestCaseQueryWrapper.eq("problem_id", problem_id);

        algorithmTestCaseMapper.delete(algorithmTestCaseQueryWrapper);

        problemAlgorithmTestCaseRequestList.forEach((testCase)->{
            AlgorithmTestCase algorithmTestCase = new AlgorithmTestCase();
            algorithmTestCase.setProblem_id(problem_id);
            algorithmTestCase.setInput(testCase.getInput());
            algorithmTestCase.setOutput(testCase.getOutput());
            algorithmTestCase.setCreate_time(new Date());
            algorithmTestCaseMapper.insert(algorithmTestCase);
        });

        return true;
    }

    @Override
    public List<ProblemAlgorithmTestCaseRequest> problemTestCaseGet(Long problem_id, boolean isAdmin) {
        if (!isAdmin){
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，您的权限不足");
        }

        QueryWrapper<AlgorithmTestCase> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("problem_id", problem_id);

        List<AlgorithmTestCase> algorithmTestCases = algorithmTestCaseMapper.selectList(queryWrapper);
        List<ProblemAlgorithmTestCaseRequest> problemAlgorithmTestCaseRequestList = new ArrayList<>();
        algorithmTestCases.forEach((testCase)->{
            ProblemAlgorithmTestCaseRequest problemAlgorithmTestCaseRequest = new ProblemAlgorithmTestCaseRequest();
            problemAlgorithmTestCaseRequest.setInput(testCase.getInput());
            problemAlgorithmTestCaseRequest.setOutput(testCase.getOutput());
            problemAlgorithmTestCaseRequestList.add(problemAlgorithmTestCaseRequest);
        });

        return problemAlgorithmTestCaseRequestList;
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
        } else if (judgeRequest.getIndex() != null) {
            QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
            competitionsProblemsAlgorithmQueryWrapper.eq("idx", judgeRequest.getIndex());
            competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", judgeRequest.getCompetition_id());
            CompetitionsProblemsAlgorithm competitionsProblemsAlgorithm = competitionsProblemsAlgorithmMapper.selectOne(competitionsProblemsAlgorithmQueryWrapper);
            if (competitionsProblemsAlgorithm == null) {
                throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的题目");
            } else {
                problemAlgorithmLimitQueryWrapper.eq("problem_id", competitionsProblemsAlgorithm.getProblem_id());
            }
        } else {
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

        data.put("code", source_code);
        data.put("language", language);
        data.put("input", input_list.get(0));
        data.put("cpuLimit", time_used * 1000000000L);
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
    }

    @Override
    public Judge problemAlgorithmSubmit(JudgeRequest judgeRequest, Long uuid) {
        QueryWrapper<ProblemAlgorithmBank> queryWrapper = new QueryWrapper<>();
        ProblemAlgorithmBank problemAlgorithmBank;
        if (judgeRequest.getProblem_id() != null) {
            queryWrapper.eq("problem_id", judgeRequest.getProblem_id());
            queryWrapper.eq("is_delete", 0);
            problemAlgorithmBank = problemAlgorithmBankMapper.selectOne(queryWrapper);
            if (problemAlgorithmBank == null) {
                throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "题目不存在");
            }
        } else {
            QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
            competitionsProblemsAlgorithmQueryWrapper.eq("idx", judgeRequest.getIndex());
            competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", judgeRequest.getCompetition_id());

            CompetitionsProblemsAlgorithm competitionsProblemsAlgorithm = competitionsProblemsAlgorithmMapper.selectOne(competitionsProblemsAlgorithmQueryWrapper);
            if (competitionsProblemsAlgorithm == null) {
                throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "题目不存在");
            }
            queryWrapper.eq("problem_id", competitionsProblemsAlgorithm.getProblem_id());
            problemAlgorithmBank = problemAlgorithmBankMapper.selectOne(queryWrapper);
        }

        QueryWrapper<CompetitionsProblemsAlgorithm> competitionsProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
        CompetitionsProblemsAlgorithm competitionsProblemsAlgorithm = new CompetitionsProblemsAlgorithm();

        QueryWrapper<CompetitionsUser> competitionsUserQueryWrapper = new QueryWrapper<>();
        CompetitionsUser competitionsUser = new CompetitionsUser();

        if (problemAlgorithmBank.getIs_delete() == 1) {
            if (judgeRequest.getCompetition_id() == null) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有这道题目的提交权限");
            }
        }
        QueryWrapper<Competitions> competitionsQueryWrapper = new QueryWrapper<>();
        competitionsQueryWrapper.eq("competition_id", judgeRequest.getCompetition_id());
        Competitions competitions = new Competitions();

        if (judgeRequest.getCompetition_id() != null) {
            // 1.未报名比赛表示比赛的试题还不允许随意提交
            competitionsUserQueryWrapper.eq("uuid", uuid);
            competitionsUserQueryWrapper.eq("competition_id", judgeRequest.getCompetition_id());
            competitionsUser = competitionsUserMapper.selectOne(competitionsUserQueryWrapper);
            if (competitionsUser == null || competitionsUser.getIs_participant() == 1) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你还没有报名比赛，不允许提交代码");
            }

            // 2.未到达比赛开始时间不允许随意提交
            competitions = competitionsMapper.selectOne(competitionsQueryWrapper);
            if (competitions == null) {
                throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的比赛");
            }
            Date currentDate = new Date();
            if (currentDate.before(competitions.getStart_time())) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，比赛时间还没到，不允许提交代码");
            }
        }

        if (judgeRequest.getIndex() != null && judgeRequest.getCompetition_id() != null) {
            competitionsProblemsAlgorithmQueryWrapper.eq("competition_id", judgeRequest.getCompetition_id());
            competitionsProblemsAlgorithmQueryWrapper.eq("idx",judgeRequest.getIndex());
            competitionsProblemsAlgorithm = competitionsProblemsAlgorithmMapper.selectOne(competitionsProblemsAlgorithmQueryWrapper);
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
        AtomicLong total_memory_used = new AtomicLong(0L);
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
        HashMap<String, Object> paramMap = new HashMap<>();
        paramMap.put("language", language);
        paramMap.put("code", source_code);
        paramMap.put("input", algorithmTestCases.get(0));
        fileList.add(paramMap);

        HttpResponse response = HttpRequest.post("http://101.43.48.120:6048/build")
                .header("Content-Type", "application/json")
                .body(JSONUtil.toJsonStr(fileList))
                .execute();

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
            problemAlgorithmBank.setTest_total(problemAlgorithmBank.getTest_total() + 1);
            problemAlgorithmBankMapper.update(problemAlgorithmBank, queryWrapper);
            return jsonList.get(0);
        }

        //
        List<HashMap<String, Object>> mapList = new ArrayList<>();
        String finalLanguage = language;
        algorithmTestCases.forEach((algorithmTestCase -> {
            HashMap<String, Object> Param = new HashMap<>();
            Param.put("input", algorithmTestCase.getInput());
            Param.put("cpuLimit", time_used * 1000000000L);
            Param.put("memoryLimit", memory_used * 1024 * 1024);
            Param.put("fileId", fileId);
            Param.put("language", finalLanguage);

            mapList.add(Param);
        }));
        // 开始正式运行代码
        response = HttpRequest.post("http://101.43.48.120:6048/exec")
                .header("Content-Type", "application/json")
                .body(JSONUtil.toJsonStr(mapList))
                .execute();

        responseBody = response.body();

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
                total_memory_used.updateAndGet(v -> Math.toIntExact(v + judge.getMemory()));
                memory_used_list.add(Math.toIntExact(judge.getMemory() / (1024 * 1024)));
                if (!Objects.equals(judge.getOutput().trim(), output.trim())){
                    result_list.add("Wrong Answer");
                } else {
                    // ！！！！！！！！！！！！！！！！！！
                    result_list.add("Accepted");
                }
            } else {
                total_memory_used.addAndGet(0L);
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

        // 观察当前时间和竞赛结束时间判断是否进入排行榜显示
        Date currentDate = new Date();
        if (judgeRequest.getCompetition_id() != null && currentDate.before(competitions.getEnd_time())) {
            problemAlgorithmBank.setTest_total(problemAlgorithmBank.getTest_total() + 1);
        }

        // 为之后插入ac状态做准备
        QueryWrapper<CompetitionAcProblemsAlgorithm> competitionAcProblemsAlgorithmQueryWrapper = new QueryWrapper<>();
        competitionAcProblemsAlgorithmQueryWrapper.eq("competition_id", judgeRequest.getCompetition_id());
        competitionAcProblemsAlgorithmQueryWrapper.eq("uuid", uuid);
        competitionAcProblemsAlgorithmQueryWrapper.eq("idx", judgeRequest.getIndex());

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
            // AC之后计算罚时
            Date localDate = competitions.getStart_time();

            if (judgeRequest.getCompetition_id() != null) {
                CompetitionAcProblemsAlgorithm competitionAcProblemsAlgorithm = competitionAcProblemsAlgorithmMapper.selectOne(competitionAcProblemsAlgorithmQueryWrapper);
                if (competitionAcProblemsAlgorithm == null) {
                    competitionAcProblemsAlgorithm = new CompetitionAcProblemsAlgorithm();
                    competitionAcProblemsAlgorithm.setCompetition_id(judgeRequest.getCompetition_id());
                    competitionAcProblemsAlgorithm.setUuid(uuid);
                    competitionAcProblemsAlgorithm.setIdx(judgeRequest.getIndex());

                    competitionAcProblemsAlgorithm.setTest_num(0L);

                    // 比赛状态下，反复AC是不可以添加AC次数的
                    // 观察当前时间和竞赛结束时间判断是否进入排行榜显示
                    if (currentDate.before(competitions.getEnd_time())) {
                        competitionAcProblemsAlgorithm.setStatus(0);
                        competitionAcProblemsAlgorithm.setAfter_status(0);
                        competitionsProblemsAlgorithm.setAc_total(competitionsProblemsAlgorithm.getAc_total() + 1);
                        competitionsProblemsAlgorithm.setTest_total(competitionsProblemsAlgorithm.getTest_total() + 1);
                        competitionsUser.setAc_num(competitionsUser.getAc_num() + 1);
                        competitionsUser.setTime_penalty((long) ((currentDate.getTime() - localDate.getTime()) / 1000 + competitionAcProblemsAlgorithm.getTest_num() + competitionsUser.getTime_penalty()));
                    } else {
                        competitionAcProblemsAlgorithm.setStatus(1);
                        competitionAcProblemsAlgorithm.setAfter_status(0);
                    }

                    competitionAcProblemsAlgorithmMapper.insert(competitionAcProblemsAlgorithm);
                    competitionsUserMapper.update(competitionsUser, competitionsUserQueryWrapper);
                } else if (competitionAcProblemsAlgorithm.getStatus() == 1 && competitionAcProblemsAlgorithm.getAfter_status() == 1) {
                    if (currentDate.before(competitions.getEnd_time())) {
                        competitionAcProblemsAlgorithm.setStatus(0);
                        competitionAcProblemsAlgorithm.setAfter_status(0);
                        competitionsProblemsAlgorithm.setAc_total(competitionsProblemsAlgorithm.getAc_total() + 1);
                        competitionsProblemsAlgorithm.setTest_total(competitionsProblemsAlgorithm.getTest_total() + 1);
                        competitionsUser.setTime_penalty((long) ((currentDate.getTime() - localDate.getTime()) / 1000 + competitionAcProblemsAlgorithm.getTest_num() + competitionsUser.getTime_penalty()));
                    } else {
                        competitionAcProblemsAlgorithm.setAfter_status(0);
                    }


                    competitionAcProblemsAlgorithmMapper.update(competitionAcProblemsAlgorithm, competitionAcProblemsAlgorithmQueryWrapper);
                    if (currentDate.before(competitions.getEnd_time())) {
                        competitionsUser.setAc_num(competitionsUser.getAc_num() + 1);
                    }
                    competitionsUserMapper.update(competitionsUser, competitionsUserQueryWrapper);
                }
            }
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

            if (judgeRequest.getCompetition_id() != null) {
                CompetitionAcProblemsAlgorithm competitionAcProblemsAlgorithm = competitionAcProblemsAlgorithmMapper.selectOne(competitionAcProblemsAlgorithmQueryWrapper);
                if (competitionAcProblemsAlgorithm == null) {
                    competitionAcProblemsAlgorithm = new CompetitionAcProblemsAlgorithm();
                    competitionAcProblemsAlgorithm.setCompetition_id(judgeRequest.getCompetition_id());
                    competitionAcProblemsAlgorithm.setUuid(uuid);
                    competitionAcProblemsAlgorithm.setIdx(judgeRequest.getIndex());

                    // 观察当前时间和竞赛结束时间判断是否进入排行榜显示
                    if (currentDate.before(competitions.getEnd_time())) {
                        competitionAcProblemsAlgorithm.setStatus(1);
                        competitionAcProblemsAlgorithm.setAfter_status(1);
                        competitionAcProblemsAlgorithm.setTest_num(1L);
                        competitionsProblemsAlgorithm.setTest_total(competitionsProblemsAlgorithm.getTest_total() + 1);
                    } else {
                        competitionAcProblemsAlgorithm.setStatus(1);
                        competitionAcProblemsAlgorithm.setAfter_status(1);
                    }
                    competitionAcProblemsAlgorithmMapper.insert(competitionAcProblemsAlgorithm);
                } else if (competitionAcProblemsAlgorithm.getStatus() == 1 || competitionAcProblemsAlgorithm.getAfter_status() == 1){
                    // 观察当前时间和竞赛结束时间判断是否进入排行榜显示
                    if (currentDate.before(competitions.getEnd_time())) {
                        competitionAcProblemsAlgorithm.setTest_num(competitionAcProblemsAlgorithm.getTest_num() + 1);
                        competitionsProblemsAlgorithm.setTest_total(competitionsProblemsAlgorithm.getTest_total() + 1);
                        competitionAcProblemsAlgorithmMapper.update(competitionAcProblemsAlgorithm, competitionAcProblemsAlgorithmQueryWrapper);
                    }
                }
            }
        }

        // 将题目信息进行更新
        problemAlgorithmBankMapper.update(problemAlgorithmBank, queryWrapper);
        if (judgeRequest.getCompetition_id() != null && judgeRequest.getIndex() != null) {
            competitionsProblemsAlgorithmMapper.update(competitionsProblemsAlgorithm, competitionsProblemsAlgorithmQueryWrapper);
        }
        submissionsAlgorithmMapper.insert(submissionsAlgorithm);
        Long submission_id = submissionsAlgorithm.getSubmission_id();

        // 插入细节信息
        submissionAlgorithmDetails.setSubmission_id(submission_id);
        submissionAlgorithmDetails.setMemory_used(total_memory_used.get() / (1024 * 1024));
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
        List<HashMap<String, Object>> fileIdList = new ArrayList<>();
        HashMap<String, Object> fileIdInfo = new HashMap<>();
        fileIdInfo.put("fileId", fileId);
        fileIdList.add(fileIdInfo);

        response = HttpRequest.post("http://101.43.48.120:6048/delete")
                .header("Content-Type", "application/json")  // 设置 Content-Type 为 application/json
                .body(JSONUtil.toJsonStr(fileIdList))  // 将参数 Map 转换为 JSON 字符串
                .execute();  // 执行请求

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
    private ProblemAlgorithmBankVo getProblemAlgorithmVO(ProblemAlgorithmBank problemAlgorithmBank, Integer uuid, List<String> problemAlgorithmTags) {
        ProblemAlgorithmBankVo problemAlgorithmBankVo = new ProblemAlgorithmBankVo();
        problemAlgorithmBankVo.setProblem_id(problemAlgorithmBank.getProblem_id());
        problemAlgorithmBankVo.setShort_name(problemAlgorithmBank.getShort_name());
        problemAlgorithmBankVo.setChinese_name(problemAlgorithmBank.getChinese_name());
        problemAlgorithmBankVo.setEnglish_name(problemAlgorithmBank.getEnglish_name());
        problemAlgorithmBankVo.setDifficulty_name(problemAlgorithmBank.getDifficulty_name());
        problemAlgorithmBankVo.setSource(problemAlgorithmBank.getSource_name());
        problemAlgorithmBankVo.setAlgorithm_tags(problemAlgorithmTags);
        problemAlgorithmBankVo.setDescription(problemAlgorithmBank.getDescription());
        problemAlgorithmBankVo.setTest_total(problemAlgorithmBank.getTest_total());
        problemAlgorithmBankVo.setAc_total(problemAlgorithmBank.getAc_total());

        QueryWrapper<ProblemAlgorithmLimit> problemAlgorithmLimitQueryWrapper = new QueryWrapper<>();
        problemAlgorithmLimitQueryWrapper.eq("problem_id", problemAlgorithmBank.getProblem_id());
        problemAlgorithmLimitQueryWrapper.eq("is_delete", problemAlgorithmBank.getIs_delete());
        ProblemAlgorithmLimit problemAlgorithmLimit = problemAlgorithmLimitMapper.selectOne(problemAlgorithmLimitQueryWrapper);
        problemAlgorithmBankVo.setMemory_limit(problemAlgorithmLimit.getMemory_limit());
        problemAlgorithmBankVo.setCpu_limit(problemAlgorithmLimit.getCpu_limit());

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
