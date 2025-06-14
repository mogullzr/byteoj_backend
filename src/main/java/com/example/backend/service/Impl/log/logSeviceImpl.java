package com.example.backend.service.Impl.log;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.*;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.log.*;
import com.example.backend.models.request.log.LogSearchRequest;
import com.example.backend.models.vo.log.LogAdminBasicInfo;
import com.example.backend.models.vo.log.LogVo;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.service.log.LogService;
import com.example.backend.utils.LogStaticUtil;
import com.example.backend.utils.MySQLUtils;
import com.example.backend.utils.RedisUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
@Slf4j
public class logSeviceImpl extends ServiceImpl<LogOperationMapper, LogOperation> implements LogService {
    @Resource
    private UserMapper userMapper;

    @Resource
    private LogOperationMapper logOperationMapper;

    @Resource
    private LogExceptionMapper logExceptionMapper;

    @Resource
    private LogDailyInfoMapper logDailyInfoMapper;

    @Resource
    private LogDailyDetailInfoMapper logDailyDetailInfoMapper;

    @Resource
    private LogMonthlyInfoMapper logMonthlyInfoMapper;

    @Resource
    private ObjectMapper objectMapper;

    @Resource
    private LogBrowserMapper logBrowserMapper;

    @Value("${log.log_anaylsis.uuid}")
    private String uuid_field;

    @Value("${log.log_anaylsis.operation_total}")
    private String operation_total_field;

    @Value("${log.log_anaylsis.exception_total}")
    private String exception_total_field;

    @Value("${log.log_anaylsis.new_user_total}")
    private String new_user_total_field;

    @Value("${log.log_anaylsis.user_total}")
    private String user_total_field;

    @Value("${log.log_anaylsis.start_time}")
    private String start_time_field;

    @Value("${log.log_anaylsis.end_time}")
    private String end_time_field;

    @Value("${log.log_anaylsis.avg_response_time}")
    private String avg_response_time_field;

    @Value("${log.log_anaylsis.operator_id}")
    private String operator_id_field;

    @Value("${log.log_anaylsis.operator_total}")
    private String operator_total_field;

    @Value("${log.log_anaylsis.browse_total}")
    private String browse_total_field;

    @Value("${log.log_anaylsis.active_total}")
    private String active_total_field;

    @Value("${log.log_anaylsis.create_date}")
    private String create_date_field;

    @Value("${log.log_info.operation_time}")
    private String operation_time_field;

    @Override
    public List<LogVo> listLogVoSearch(LogSearchRequest logSearchRequest) {
        Integer status = logSearchRequest.getStatus();
        String keyword = logSearchRequest.getKeyword();
        String module = logSearchRequest.getModule();
        List<Integer> code = logSearchRequest.getCode();
        List<String> type = logSearchRequest.getType();
        Long uuid = logSearchRequest.getUuid();
        Integer is_date_order = logSearchRequest.getIs_date_order();
        Integer startMilliSeconds = logSearchRequest.getStartMilliSeconds();
        Integer endMilliSeconds = logSearchRequest.getEndMilliSeconds();
        Integer current = logSearchRequest.getCurrent();
        Integer size = logSearchRequest.getSize();

        List<LogVo> logVoList = new ArrayList<>();

        // 1.日志类型
        if (status == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "必须指定查询的日志类型！！！");
        }

        // 2.操作日志查询
        if (status == 1) {
            logVoList = getLogOperationInfo(keyword, module, code, type, uuid, is_date_order, startMilliSeconds, endMilliSeconds, current, size);
        }
        // 3.异常日志查询
        else if (status == 2) {
            logVoList = getLogException(keyword, module, code, type, uuid, is_date_order, startMilliSeconds, endMilliSeconds, current, size);
        } else {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "请指定正确的状态");
        }

        return logVoList;
    }

    private List<LogVo> getLogException(String keyword, String module, List<Integer> code, List<String> type, Long uuid, Integer is_date_order, Integer startMilliSeconds, Integer endMilliSeconds, Integer current, Integer size) {
        Page<LogException> page = new Page<>(current, size);
        QueryWrapper<LogException> queryWrapper = new QueryWrapper<>();
        List<LogVo> logVos = new ArrayList<>();

        // 1.关键词
        if (keyword != null && !keyword.isEmpty()) {
            queryWrapper.like("request_param", keyword).or();
            queryWrapper.like("error_message", keyword).or();
        }

        // 2.模块
        if (module != null && !module.isEmpty()) {
            queryWrapper.eq("module", module);
        }

        // 3.状态码
        if (code != null && !code.isEmpty()) {
            queryWrapper.eq("code",code.get(0));
        }

        // 4.请求方法
        if (type != null && !type.isEmpty()) {
            queryWrapper.eq("type", type.get(0));
        }

        // 5.用户uuid
        if (uuid != null) {
            queryWrapper.eq("operator_id", uuid);
        }

        // 6.是否按照时间排序
        if (is_date_order != null) {
            if (is_date_order.equals(1)) {
                queryWrapper.orderByDesc("create_time");
            } else {
                queryWrapper.orderByAsc("create_time");
            }
        }

        // 7.操作时长
        if (startMilliSeconds != null) {
            queryWrapper.ge("operation_time", startMilliSeconds);
        }

        // 8.终止时长
        if (endMilliSeconds != null) {
            queryWrapper.le("operation_time", endMilliSeconds);
        }

        Page<LogException> logPage = logExceptionMapper.selectPage(page, queryWrapper);
        List<LogException> logExceptions = logPage.getRecords();
        if (logExceptions != null && !logExceptions.isEmpty()) {
            logExceptions.forEach((logOperation)->{
                LogVo logVo = new LogVo();
                logVo.setLog_id(logOperation.getId());
                logVo.setModule(logOperation.getModule());
                logVo.setUrl(logOperation.getUrl());
                logVo.setType(logOperation.getType());
                logVo.setDescription(logOperation.getDescription());
                logVo.setRequest_param(logOperation.getRequest_param());
                logVo.setResponse_param(logOperation.getError_message());
                logVo.setCode(logOperation.getCode());
                logVo.setUsername(String.valueOf(logOperation.getOperator_id()));
                logVo.setOperation_time(logOperation.getOperation_time());
                logVo.setIp(logOperation.getIp());
                logVo.setCreate_time(logOperation.getCreate_time());
                logVo.setMethod(logOperation.getMethod());
                logVo.setError_message(logVo.getError_message());
                logVo.setTotal(logVo.getTotal());

                logVos.add(logVo);
            });
        }
        return logVos;
    }

    private List<LogVo> getLogOperationInfo(String keyword, String module, List<Integer> code, List<String> type, Long uuid, Integer is_date_order, Integer startMilliSeconds, Integer endMilliSeconds, Integer current, Integer size) {
        Page<LogOperation> page = new Page<>(current, size);
        QueryWrapper<LogOperation> queryWrapper = new QueryWrapper<>();
        List<LogVo> logVos = new ArrayList<>();

        // 1.关键词
        if (keyword != null && !keyword.isEmpty()) {
            queryWrapper.like("request_param", keyword).or();
            queryWrapper.like("response_param", keyword).or();
        }

        // 2.模块
        if (module != null && !module.isEmpty()) {
            queryWrapper.eq("module", module);
        }

        // 3.状态码
        if (code != null && !code.isEmpty()) {
            queryWrapper.eq("code",code.get(0));
        }

        // 4.请求方法
        if (type != null && !type.isEmpty()) {
            queryWrapper.eq("type", type.get(0));
        }

        // 5.用户uuid
        if (uuid != null) {
            queryWrapper.eq("operator_id", uuid);
        }

        // 6.是否按照时间排序
        if (is_date_order != null) {
            if (is_date_order.equals(1)) {
                queryWrapper.orderByDesc("create_time");
            } else {
                queryWrapper.orderByAsc("create_time");
            }
        }

        // 7.操作时长
        if (startMilliSeconds != null) {
            queryWrapper.ge("operation_time", startMilliSeconds);
        }

        // 8.终止时长
        if (endMilliSeconds != null) {
            queryWrapper.le("operation_time", endMilliSeconds);
        }

        Page<LogOperation> logPage = logOperationMapper.selectPage(page, queryWrapper);
        List<LogOperation> logOperations = logPage.getRecords();
        if (logOperations != null && !logOperations.isEmpty()) {
            logOperations.forEach((logOperation)->{
                LogVo logVo = new LogVo();
                logVo.setLog_id(logOperation.getId());
                logVo.setModule(logOperation.getModule());
                logVo.setUrl(logOperation.getUrl());
                logVo.setType(logOperation.getType());
                logVo.setDescription(logOperation.getDescription());
                logVo.setRequest_param(logOperation.getRequest_param());
                logVo.setResponse_param(logOperation.getResponse_param());
                logVo.setCode(logOperation.getCode());
                logVo.setUsername(String.valueOf(logOperation.getOperator_id()));
                logVo.setOperation_time(logOperation.getOperation_time());
                logVo.setIp(logOperation.getIp());
                logVo.setCreate_time(logOperation.getCreate_time());
                logVo.setMethod(logOperation.getMethod());
                logVo.setTotal(logPage.getPages());

                logVos.add(logVo);
            });
        }
        return logVos;
    }

//    @Override
    public LogAdminBasicInfo logAnalysisBasicDailyGet() {
//        LogAdminBasicInfo logAdminBasicInfo = new LogAdminBasicInfo();
//
//        String userBrowse = RedisUtils.get("user_browse");
//        String logOperationsTotal = RedisUtils.get("log_operations_total");
//        String logExceptionTotal = RedisUtils.get("log_exception_total");
//        String userTotal = RedisUtils.get("user_total");
//        String activeTotal = RedisUtils.get("active_total");
//        String newUserTotal = RedisUtils.get("new_user_total");
//        String avgResponseMilliseconds = RedisUtils.get("avg_response_milliseconds");
//        String startTime = RedisUtils.get("start_time");
//        String endTime = RedisUtils.get("end_time");
//        String browser = RedisUtils.get("browser");
//
//        logAdminBasicInfo.setUser_browse(Integer.valueOf(userBrowse));
//        logAdminBasicInfo.setLog_operations_total(Integer.valueOf(logOperationsTotal));
//        logAdminBasicInfo.setLog_exception_total(Integer.valueOf(logExceptionTotal));
//        logAdminBasicInfo.setUser_total(Integer.valueOf(userTotal));
//        logAdminBasicInfo.setActive_total(Integer.valueOf(activeTotal));
//        logAdminBasicInfo.setNew_user_total(Integer.valueOf(newUserTotal));
//        logAdminBasicInfo.setAvg_response_milliseconds(Integer.valueOf(avgResponseMilliseconds));
//        logAdminBasicInfo.setStart_time(Long.valueOf(startTime));
//        logAdminBasicInfo.setEnd_time(Long.valueOf(endTime));
//        logAdminBasicInfo.setBrowser(browser);
//
//        return logAdminBasicInfo;
        return null;
    }

    /**
     * 获取指定日志ID的浏览器使用统计
     * @return 浏览器统计信息(浏览器名称, 数量, 百分比)
     */
    private String getBrowserInfo() {
        // 1. 查询日志ID
//        QueryWrapper<LogDailyInfo> queryWrapper = new QueryWrapper<>();
//        queryWrapper.between("create_time",startTime, endTime);
//        LogDailyInfo logDailyInfo = logDailyInfoMapper.selectOne(queryWrapper);
//        if (logDailyInfo == null) {
//            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "有问题？？？？");
//        }
//
//        // 2. 查询该日志的所有浏览器记录
//        QueryWrapper<LogBrowser> wrapper = new QueryWrapper<>();
//        wrapper.select("browser, COUNT(*) as count")
//                .eq("log_info_id", logDailyInfo.getId())
//                .eq("type", 0)
//                .groupBy("browser")
//                .orderByDesc("count");
//
//        List<Map<String, Object>> logBrowserList = logBrowserMapper.selectMaps(wrapper);
//
//        if (logBrowserList.isEmpty()) {
//            return "无(0.00%)";
//        }
//
//        // 2. 获取总记录数
//        long totalCount = logBrowserMapper.selectCount(new QueryWrapper<LogBrowser>()
//                .eq("log_info_id", logDailyInfo.getId())
//                .eq("type", 0));
//
//        // 3. 获取数量最多的浏览器
//        Map<String, Object> topBrowser = logBrowserList.get(0);
//        String browserName = (String) topBrowser.get("browser");
//        long browserCount = ((Number) topBrowser.get("count")).longValue();
//
//        // 4. 计算百分比
//        double percentage = (double) browserCount / totalCount * 100;
//        percentage = new BigDecimal(percentage).setScale(2, RoundingMode.HALF_UP).doubleValue();
//
//        return browserName + "(" + percentage + ")";
        return null;
    }

    private Integer getAvgResponseTotal() {
//        QueryWrapper<LogOperation> queryWrapper = new QueryWrapper<>();
//        LocalDateTime startOfDay = LocalDate.now().atStartOfDay();
//        Date startTime = localDateTimeToDate(startOfDay);
//        LocalDateTime endOfDay = LocalDate.now().atTime(LocalTime.MAX);
//        Date endTime = localDateTimeToDate(endOfDay);
//        queryWrapper
//                .select("AVG(operation_time) as avgValue")
//                .between("start_time", startTime, endTime);
//        Map<String, Object> result = logOperationMapper.selectMaps(queryWrapper).get(0);
//
//        return (int) (result.get("avgValue") != null ? ((Number) result.get("avgValue")) : 0);
        return null;
    }

    private Integer getUserTotal() {
        return Math.toIntExact(userMapper.selectCount(null));
    }

    private List<Long> logSearchUserByTime(Date startTime, Date endTime) {
        // 使用Set自动去重
        Set<Long> resultSet = new HashSet<>();

        // 查询log_operation表
        QueryWrapper<LogOperation> opWrapper = new QueryWrapper<LogOperation>()
                .select("DISTINCT operator_id")  // 使用DISTINCT在数据库层面去重
                .between("create_time", startTime, endTime);

        logOperationMapper.selectList(opWrapper)
                .stream()
                .map(LogOperation::getOperator_id)
                .filter(Objects::nonNull)  // 过滤掉null值
                .forEach(resultSet::add);  // 添加到Set中

        // 查询log_exception表
        QueryWrapper<LogException> exWrapper = new QueryWrapper<LogException>()
                .select("DISTINCT operator_id")  // 使用DISTINCT在数据库层面去重
                .between("create_time", startTime, endTime);

        logExceptionMapper.selectList(exWrapper)
                .stream()
                .map(LogException::getOperator_id)
                .filter(Objects::nonNull)  // 过滤掉null值
                .forEach(resultSet::add);  // 添加到Set中

        // 转换为List并返回
        return new ArrayList<>(resultSet);
    }
}
