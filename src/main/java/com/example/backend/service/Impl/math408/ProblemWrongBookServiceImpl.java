package com.example.backend.service.Impl.math408;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemAlgorithmBankMapper;
import com.example.backend.mapper.ProblemMath408BankMapper;
import com.example.backend.mapper.ProblemMath408TagsMapper;
import com.example.backend.mapper.ProblemMath408TagsRelationMapper;
import com.example.backend.mapper.ProblemWrongBookMapper;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.math408.ProblemMath408Bank;
import com.example.backend.models.domain.math408.ProblemMath408Tags;
import com.example.backend.models.domain.math408.ProblemMath408TagsRelation;
import com.example.backend.models.domain.math408.ProblemWrongBook;
import com.example.backend.models.request.problem.ProblemWrongBookQueryRequest;
import com.example.backend.models.request.problem.ProblemWrongBookSyncItem;
import com.example.backend.models.vo.problem.ProblemWrongBookVo;
import com.example.backend.service.math408.ProblemWrongBookService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;

@Service
public class ProblemWrongBookServiceImpl extends ServiceImpl<ProblemWrongBookMapper, ProblemWrongBook>
        implements ProblemWrongBookService {

    @Resource
    private ProblemWrongBookMapper problemWrongBookMapper;

    @Resource
    private ProblemMath408BankMapper problemMath408BankMapper;

    @Resource
    private ProblemAlgorithmBankMapper problemAlgorithmBankMapper;

    @Resource
    private ProblemMath408TagsMapper problemMath408TagsMapper;

    @Resource
    private ProblemMath408TagsRelationMapper problemMath408TagsRelationMapper;

    @Override
    public Page<ProblemWrongBookVo> listWrongBooks(Long uuid, ProblemWrongBookQueryRequest queryRequest) {
        validateLoginUser(uuid);
        queryRequest = normalizeQueryRequest(queryRequest);

        int pageNum = queryRequest.getPageNum() == null || queryRequest.getPageNum() <= 0 ? 1 : queryRequest.getPageNum();
        int pageSize = queryRequest.getPageSize() == null || queryRequest.getPageSize() <= 0 ? 10 : Math.min(queryRequest.getPageSize(), 50);

        Page<ProblemWrongBook> page = new Page<>(pageNum, pageSize);
        QueryWrapper<ProblemWrongBook> queryWrapper = buildWrongBookQueryWrapper(uuid, queryRequest);
        queryWrapper.orderByDesc("update_date");

        Page<ProblemWrongBook> rawPage = problemWrongBookMapper.selectPage(page, queryWrapper);
        List<ProblemWrongBookVo> records = buildWrongBookVoList(rawPage.getRecords());

        Page<ProblemWrongBookVo> resultPage = new Page<>(pageNum, pageSize, rawPage.getTotal());
        resultPage.setPages(rawPage.getPages());
        resultPage.setRecords(records);
        return resultPage;
    }

    @Override
    public ProblemWrongBookVo getWrongBookDetail(Long uuid, Long id) {
        validateLoginUser(uuid);
        if (id == null || id <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数错误");
        }
        return buildWrongBookDetailVo(getUserWrongBook(uuid, id));
    }

    @Override
    public ProblemWrongBookVo randomWrongBook(Long uuid, ProblemWrongBookQueryRequest queryRequest) {
        validateLoginUser(uuid);
        queryRequest = normalizeQueryRequest(queryRequest);

        QueryWrapper<ProblemWrongBook> queryWrapper = buildWrongBookQueryWrapper(uuid, queryRequest);
        queryWrapper.select("id");
        List<ProblemWrongBook> candidateList = problemWrongBookMapper.selectList(queryWrapper);
        if (candidateList == null || candidateList.isEmpty()) {
            return null;
        }

        int randomIndex = ThreadLocalRandom.current().nextInt(candidateList.size());
        Long id = candidateList.get(randomIndex).getId();
        return buildWrongBookDetailVo(getUserWrongBook(uuid, id));
    }

    @Override
    public Boolean updateMasteryStatus(Long uuid, Long id, Integer masteryStatus) {
        if (uuid == null || uuid <= 0 || id == null || id <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数错误");
        }
        if (masteryStatus == null || (masteryStatus != 0 && masteryStatus != 1)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "掌握状态参数错误");
        }

        ProblemWrongBook wrongBook = getUserWrongBook(uuid, id);
        wrongBook.setMastery_status(masteryStatus);
        wrongBook.setUpdate_date(new Date());
        return problemWrongBookMapper.updateById(wrongBook) > 0;
    }

    @Override
    public Boolean deleteWrongBook(Long uuid, Long id) {
        if (uuid == null || uuid <= 0 || id == null || id <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数错误");
        }

        ProblemWrongBook wrongBook = getUserWrongBook(uuid, id);
        wrongBook.setIs_delete(1);
        wrongBook.setUpdate_date(new Date());
        return problemWrongBookMapper.updateById(wrongBook) > 0;
    }

    @Override
    public void syncWrongBook(Long uuid, List<ProblemWrongBookSyncItem> syncItems) {
        if (uuid == null || uuid <= 0 || syncItems == null || syncItems.isEmpty()) {
            return;
        }

        List<ProblemWrongBookSyncItem> normalizedItems = syncItems.stream()
                .filter(Objects::nonNull)
                .filter(item -> item.getProblem_id() != null && item.getProblem_id() > 0)
                .filter(item -> item.getTotal_score() != null && item.getTotal_score() > 0)
                .collect(Collectors.toList());
        if (normalizedItems.isEmpty()) {
            return;
        }

        Set<Long> problemIds = normalizedItems.stream()
                .map(ProblemWrongBookSyncItem::getProblem_id)
                .collect(Collectors.toSet());
        Map<Long, ProblemWrongBook> existingMap = problemWrongBookMapper.selectList(
                        new QueryWrapper<ProblemWrongBook>()
                                .eq("uuid", uuid)
                                .eq("is_delete", 0)
                                .in("problem_id", problemIds))
                .stream()
                .collect(Collectors.toMap(ProblemWrongBook::getProblem_id, item -> item, (left, right) -> left));

        Map<Long, String> problemNameMap = loadProblemNameMap(normalizedItems);
        List<ProblemWrongBook> insertList = new ArrayList<>();
        List<ProblemWrongBook> updateList = new ArrayList<>();
        Date now = new Date();

        for (ProblemWrongBookSyncItem item : normalizedItems) {
            ProblemWrongBook existing = existingMap.get(item.getProblem_id());
            boolean wrong = item.getScore() == null || item.getScore() < item.getTotal_score();

            if (wrong) {
                if (existing == null) {
                    ProblemWrongBook wrongBook = new ProblemWrongBook();
                    wrongBook.setUuid(uuid);
                    wrongBook.setProblem_id(item.getProblem_id());
                    wrongBook.setProblem_name(problemNameMap.getOrDefault(item.getProblem_id(), "未知题目"));
                    wrongBook.setProblem_status(item.getProblem_status());
                    wrongBook.setOption_type(item.getOption_type());
                    wrongBook.setExam_id(item.getExam_id());
                    wrongBook.setExam_user_id(item.getExam_user_id());
                    wrongBook.setLatest_answer(item.getAnswer());
                    wrongBook.setLatest_score(defaultZero(item.getScore()));
                    wrongBook.setTotal_score(defaultZero(item.getTotal_score()));
                    wrongBook.setWrong_count(1);
                    wrongBook.setMastery_status(0);
                    wrongBook.setLatest_ai_advise(item.getAi_advise());
                    wrongBook.setCreate_date(now);
                    wrongBook.setUpdate_date(now);
                    wrongBook.setIs_delete(0);
                    insertList.add(wrongBook);
                } else {
                    existing.setProblem_name(problemNameMap.getOrDefault(item.getProblem_id(), existing.getProblem_name()));
                    existing.setProblem_status(item.getProblem_status());
                    existing.setOption_type(item.getOption_type());
                    existing.setExam_id(item.getExam_id());
                    existing.setExam_user_id(item.getExam_user_id());
                    existing.setLatest_answer(item.getAnswer());
                    existing.setLatest_score(defaultZero(item.getScore()));
                    existing.setTotal_score(defaultZero(item.getTotal_score()));
                    existing.setWrong_count(defaultZero(existing.getWrong_count()) + 1);
                    existing.setMastery_status(0);
                    existing.setLatest_ai_advise(item.getAi_advise());
                    existing.setUpdate_date(now);
                    updateList.add(existing);
                }
                continue;
            }

            if (existing != null) {
                existing.setProblem_name(problemNameMap.getOrDefault(item.getProblem_id(), existing.getProblem_name()));
                existing.setProblem_status(item.getProblem_status());
                existing.setOption_type(item.getOption_type());
                existing.setExam_id(item.getExam_id());
                existing.setExam_user_id(item.getExam_user_id());
                existing.setLatest_answer(item.getAnswer());
                existing.setLatest_score(defaultZero(item.getScore()));
                existing.setTotal_score(defaultZero(item.getTotal_score()));
                existing.setLatest_ai_advise(item.getAi_advise());
                existing.setMastery_status(1);
                existing.setUpdate_date(now);
                updateList.add(existing);
            }
        }

        if (!insertList.isEmpty()) {
            saveBatch(insertList);
        }
        if (!updateList.isEmpty()) {
            updateBatchById(updateList);
        }
    }

    private void validateLoginUser(Long uuid) {
        if (uuid == null || uuid <= 0) {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "用户未登录");
        }
    }

    private ProblemWrongBookQueryRequest normalizeQueryRequest(ProblemWrongBookQueryRequest queryRequest) {
        return queryRequest == null ? new ProblemWrongBookQueryRequest() : queryRequest;
    }

    private QueryWrapper<ProblemWrongBook> buildWrongBookQueryWrapper(Long uuid, ProblemWrongBookQueryRequest queryRequest) {
        QueryWrapper<ProblemWrongBook> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);
        queryWrapper.eq("is_delete", 0);
        queryWrapper.eq("mastery_status", queryRequest.getMastery_status() == null ? 0 : queryRequest.getMastery_status());

        if (queryRequest.getProblem_status() != null) {
            queryWrapper.eq("problem_status", queryRequest.getProblem_status());
        }
        if (queryRequest.getOption_type() != null) {
            queryWrapper.eq("option_type", queryRequest.getOption_type());
        }
        if (StringUtils.isNotBlank(queryRequest.getKeyword())) {
            queryWrapper.like("problem_name", queryRequest.getKeyword().trim());
        }
        return queryWrapper;
    }

    private ProblemWrongBook getUserWrongBook(Long uuid, Long id) {
        QueryWrapper<ProblemWrongBook> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        queryWrapper.eq("uuid", uuid);
        queryWrapper.eq("is_delete", 0);
        ProblemWrongBook wrongBook = problemWrongBookMapper.selectOne(queryWrapper);
        if (wrongBook == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "错题本记录不存在");
        }
        return wrongBook;
    }

    private Map<Long, String> loadProblemNameMap(List<ProblemWrongBookSyncItem> syncItems) {
        Map<Long, String> result = new HashMap<>();
        Set<Long> mathProblemIds = syncItems.stream()
                .filter(item -> item.getProblem_status() == null || item.getProblem_status() != 3)
                .map(ProblemWrongBookSyncItem::getProblem_id)
                .collect(Collectors.toSet());
        Set<Long> algorithmProblemIds = syncItems.stream()
                .filter(item -> item.getProblem_status() != null && item.getProblem_status() == 3)
                .map(ProblemWrongBookSyncItem::getProblem_id)
                .collect(Collectors.toSet());

        if (!mathProblemIds.isEmpty()) {
            problemMath408BankMapper.selectBatchIds(mathProblemIds)
                    .forEach(problem -> result.put(problem.getProblem_id(), problem.getProblem_name()));
        }
        if (!algorithmProblemIds.isEmpty()) {
            problemAlgorithmBankMapper.selectBatchIds(algorithmProblemIds)
                    .forEach(problem -> result.put(problem.getProblem_id(), problem.getChinese_name()));
        }
        return result;
    }

    private ProblemWrongBookVo buildWrongBookDetailVo(ProblemWrongBook wrongBook) {
        List<ProblemWrongBookVo> voList = buildWrongBookVoList(Collections.singletonList(wrongBook));
        if (voList.isEmpty()) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "错题本记录不存在");
        }
        return voList.get(0);
    }

    private List<ProblemWrongBookVo> buildWrongBookVoList(List<ProblemWrongBook> wrongBooks) {
        if (wrongBooks == null || wrongBooks.isEmpty()) {
            return new ArrayList<>();
        }

        Set<Long> mathProblemIds = wrongBooks.stream()
                .filter(item -> item.getProblem_status() == null || item.getProblem_status() != 3)
                .map(ProblemWrongBook::getProblem_id)
                .collect(Collectors.toSet());
        Set<Long> algorithmProblemIds = wrongBooks.stream()
                .filter(item -> item.getProblem_status() != null && item.getProblem_status() == 3)
                .map(ProblemWrongBook::getProblem_id)
                .collect(Collectors.toSet());

        Map<Long, ProblemMath408Bank> mathProblemMap = mathProblemIds.isEmpty()
                ? Collections.emptyMap()
                : problemMath408BankMapper.selectBatchIds(mathProblemIds).stream()
                .collect(Collectors.toMap(ProblemMath408Bank::getProblem_id, item -> item, (left, right) -> left));
        Map<Long, ProblemAlgorithmBank> algorithmProblemMap = algorithmProblemIds.isEmpty()
                ? Collections.emptyMap()
                : problemAlgorithmBankMapper.selectBatchIds(algorithmProblemIds).stream()
                .collect(Collectors.toMap(ProblemAlgorithmBank::getProblem_id, item -> item, (left, right) -> left));
        Map<Long, List<String>> mathTagsMap = loadMathTagsMap(mathProblemIds);

        List<ProblemWrongBookVo> result = new ArrayList<>(wrongBooks.size());
        for (ProblemWrongBook wrongBook : wrongBooks) {
            result.add(buildWrongBookVo(wrongBook, mathProblemMap, algorithmProblemMap, mathTagsMap));
        }
        return result;
    }

    private ProblemWrongBookVo buildWrongBookVo(ProblemWrongBook wrongBook,
                                                Map<Long, ProblemMath408Bank> mathProblemMap,
                                                Map<Long, ProblemAlgorithmBank> algorithmProblemMap,
                                                Map<Long, List<String>> mathTagsMap) {
        ProblemWrongBookVo vo = new ProblemWrongBookVo();
        vo.setId(wrongBook.getId());
        vo.setProblem_id(wrongBook.getProblem_id());
        vo.setProblem_name(wrongBook.getProblem_name());
        vo.setProblem_status(wrongBook.getProblem_status());
        vo.setOption_type(wrongBook.getOption_type());
        vo.setExam_id(wrongBook.getExam_id());
        vo.setExam_user_id(wrongBook.getExam_user_id());
        vo.setLatest_answer(wrongBook.getLatest_answer());
        vo.setLatest_score(wrongBook.getLatest_score());
        vo.setTotal_score(wrongBook.getTotal_score());
        vo.setWrong_count(wrongBook.getWrong_count());
        vo.setMastery_status(wrongBook.getMastery_status());
        vo.setLatest_ai_advise(wrongBook.getLatest_ai_advise());
        vo.setUpdate_date(wrongBook.getUpdate_date());

        if (wrongBook.getProblem_status() != null && wrongBook.getProblem_status() == 3) {
            ProblemAlgorithmBank algorithmBank = algorithmProblemMap.get(wrongBook.getProblem_id());
            if (algorithmBank != null) {
                vo.setProblem_name(algorithmBank.getChinese_name());
                vo.setDescription(algorithmBank.getDescription());
                vo.setDifficulty_name(algorithmBank.getDifficulty_name());
                vo.setSource_name(algorithmBank.getSource_name());
            }
            return vo;
        }

        ProblemMath408Bank mathBank = mathProblemMap.get(wrongBook.getProblem_id());
        if (mathBank != null) {
            vo.setProblem_name(mathBank.getProblem_name());
            vo.setDescription(mathBank.getDescription());
            vo.setDifficulty_name(mathBank.getDifficulty_name());
            vo.setSource_name(mathBank.getSource_name());
            vo.setOptions(mathBank.getOptions());
            vo.setCorrect_answer(mathBank.getCorrect_answer());
            vo.setAnalysis(mathBank.getAnalysis());
            vo.setTagsList(mathTagsMap.getOrDefault(mathBank.getProblem_id(), new ArrayList<>()));
        }
        return vo;
    }

    private Map<Long, List<String>> loadMathTagsMap(Set<Long> problemIds) {
        if (problemIds == null || problemIds.isEmpty()) {
            return Collections.emptyMap();
        }

        List<ProblemMath408Tags> tags = problemMath408TagsMapper.selectList(
                new QueryWrapper<ProblemMath408Tags>()
                        .in("problem_id", problemIds)
                        .eq("is_delete", 0));
        if (tags.isEmpty()) {
            return Collections.emptyMap();
        }

        Set<Long> tagIds = tags.stream().map(ProblemMath408Tags::getTag_id).collect(Collectors.toSet());
        Map<Long, String> tagNameMap = problemMath408TagsRelationMapper.selectList(
                        new QueryWrapper<ProblemMath408TagsRelation>().in("tag_id", tagIds))
                .stream()
                .collect(Collectors.toMap(
                        ProblemMath408TagsRelation::getTag_id,
                        ProblemMath408TagsRelation::getTag_name,
                        (left, right) -> left,
                        LinkedHashMap::new));

        Map<Long, List<String>> result = new HashMap<>();
        for (ProblemMath408Tags tag : tags) {
            result.computeIfAbsent(tag.getProblem_id(), key -> new ArrayList<>());
            String tagName = tagNameMap.get(tag.getTag_id());
            if (StringUtils.isNotBlank(tagName)) {
                result.get(tag.getProblem_id()).add(tagName);
            }
        }
        return result;
    }

    private int defaultZero(Integer value) {
        return value == null ? 0 : value;
    }
}
