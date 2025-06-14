package com.example.backend.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.backend.models.domain.log.LogException;
import com.example.backend.models.vo.log.LogAdminBasicInfo;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
* @author 89856
* @description 针对表【log_exception(异常日志)】的数据库操作Mapper
* @createDate 2025-06-07 20:56:38
* @Entity com.example.backend.models.domain.log.LogException
*/
public interface LogExceptionMapper extends BaseMapper<LogException> {
    @Select("select ")
    public LogAdminBasicInfo selectActualInfoByRules();
}




