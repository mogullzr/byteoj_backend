package com.example.backend.models.domain.competiton;

import com.alibaba.excel.annotation.ExcelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.util.List;
import java.util.Map;

@Data
public class ExcelData {
    /**
     * 排名
     */
    @ExcelProperty("排名")
    private String rank;

    /**
     * 参赛用户
     */
    @ExcelProperty("用户名")
    private String username;

    /**
     * 学校
     */
    @ExcelProperty("学校")
    private String school;

    /**
     * 通过数
     */
    @ExcelProperty("通过数")
    private Integer ac_num;

    /**
     * 罚时
     */
    @ExcelProperty("罚时")
    private String time;

    /**
     *
     */
}
