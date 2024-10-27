package com.example.backend.utils;

import com.alibaba.excel.EasyExcel;
import com.example.backend.models.domain.competiton.ExcelData;

public class ExcelImportUtil {
    /**
     * 读取Excel文件
     */
    public static void main(String[] args) {
        String filename = "F:\\Project\\Backend\\backend\\src\\test\\java\\com\\example\\backend\\test.xlsx";

        EasyExcel.read(filename, ExcelData.class, new TableListener()).sheet().doRead();
    }
}
