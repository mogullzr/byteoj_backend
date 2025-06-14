package com.example.backend.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class MySQLUtils {
    /**
     * 查询某个表里面不重复各个的数量，for instance: 1 1 1 2 2 2 2 3 3，统计出 1 : 3, 2 : 4, 3 : 2
     *
     * @param fieldName 字段名称
     * @param mapper 传过来的mapper操作对象
     * @return 获取的关系
     * @param <M>
     */
    public static <M> Map<String, Long> MapByFieldOnTable(String fieldName, BaseMapper<M> mapper, Long startTime, Long endTime, String timeField) {
        QueryWrapper<M> queryWrapper = new QueryWrapper<M>()
                .select(fieldName, "COUNT(*) as count")
                .between(timeField, startTime, endTime)
                .groupBy(fieldName)
                .orderByDesc("count");

        // 1. 执行查询并收集结果
        List<Map<String, Object>> result = mapper.selectMaps(queryWrapper);

        // 2. 转换为Map并保持插入顺序(LinkedHashMap)
        return result.stream()
                .collect(Collectors.toMap(
                        map -> map.get(fieldName).toString(),
                        map -> Long.parseLong(map.get("count").toString()),
                        (oldValue, newValue) -> oldValue,
                        LinkedHashMap::new
                ));
    }

    /**
     * 查询某个表里某字段所有记录的平均值
     *
     * @param fieldName 字段名称
     * @param mapper 传过来的mapper操作对象
     * @return 获取的关系
     * @param <M>
     */
    public static <M> Double AvgByFieldOnTable(String fieldName, BaseMapper<M> mapper, Long startTime, Long endTime) {
        QueryWrapper<M> queryWrapper = new QueryWrapper<M>()
                .select(fieldName, "AVG(" + fieldName + ") as avg");
        Map<String, Object> result = mapper.selectMaps(queryWrapper).get(0);
        Object avgValue = result.get("avg_value");

        if (avgValue == null) {
            return 0.0;  // 或根据业务需求返回null
        }

        // 处理不同数据库返回的不同数值类型
        if (avgValue instanceof Double) {
            return (Double) avgValue;
        } else if (avgValue instanceof BigDecimal) {
            return ((BigDecimal) avgValue).doubleValue();
        } else if (avgValue instanceof Number) {
            return ((Number) avgValue).doubleValue();
        }

        return Double.parseDouble(avgValue.toString());
    }
}
