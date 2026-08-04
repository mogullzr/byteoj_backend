package com.example.backend.service.math408;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.math408.ProblemWrongBook;
import com.example.backend.models.request.problem.ProblemWrongBookAddRequest;
import com.example.backend.models.request.problem.ProblemWrongBookQueryRequest;
import com.example.backend.models.request.problem.ProblemWrongBookSyncItem;
import com.example.backend.models.vo.problem.ProblemWrongBookTagStatVo;
import com.example.backend.models.vo.problem.ProblemWrongBookVo;

import java.util.List;

public interface ProblemWrongBookService extends IService<ProblemWrongBook> {

    Page<ProblemWrongBookVo> listWrongBooks(Long uuid, ProblemWrongBookQueryRequest queryRequest);

    List<ProblemWrongBookTagStatVo> listWrongBookStats(Long uuid, ProblemWrongBookQueryRequest queryRequest);

    List<ProblemWrongBookTagStatVo> listAlgorithmTagStats(Long uuid, ProblemWrongBookQueryRequest queryRequest);

    ProblemWrongBookVo getWrongBookDetail(Long uuid, Long id);

    ProblemWrongBookVo randomWrongBook(Long uuid, ProblemWrongBookQueryRequest queryRequest);

    Boolean updateMasteryStatus(Long uuid, Long id, Integer masteryStatus);

    Boolean deleteWrongBook(Long uuid, Long id);

    ProblemWrongBookVo addWrongBook(Long uuid, ProblemWrongBookAddRequest addRequest);

    void syncWrongBook(Long uuid, List<ProblemWrongBookSyncItem> syncItems);
}
