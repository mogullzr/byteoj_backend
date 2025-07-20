import xlrd
import openpyxl
import pandas as pd

# 解释：使用Excel操作应该也可以，但是对于Excel的这种比较复杂的公式操作并不是很熟悉，所以编写该程序实现行号匹配的功能
if __name__ == '__main__':
    # 1.xlsx表格路径
    name = input()
    workbook = openpyxl.load_workbook(name)

    # 2.获取指定的表名
    sheet = workbook["Sheet1"]
    # 2.1获取表格尺寸大小
    # print(sheet.dimensions)
    # 2.2获取某单元格的数据
    # cell = sheet["A3"]
    # print(cell.value)
    # 2.3获取需要匹配区间名字信息
    cellA = sheet["A3:" + "A90"]
    # for i in cellA:
    #     for j in i:
    #         print(j.value)

    # 2.4获取C列的数据
    cellC = sheet["C3:" + "C80"]
    # for i in cellC:
    #     for j in i:
    #         print(j.value)

    # 3.0创建一个新表
    workbook2 = openpyxl.Workbook()
    sheet2 = workbook2.active
    sheet2.title = "AC排行榜信息表"

    # 2.5拿到指定行区间的数据
    sheet2.append(["学生名字", "用户名", "AC通过数", "排名"])
    for i1 in cellA:
        for i2 in i1:
            flag = False
            for j1 in cellC:
                for j2 in j1:
                    if str(j2.value).strip().find(i2.value) != -1:
                        sheet2.append([i2.value, j2.value, str(sheet["E" + str(j2.row)].value),
                                       str(sheet["B" + str(j2.row)].value)])
                        print(i2.value, j2.value, str(sheet["E" + str(j2.row)].value),
                                       str(sheet["B" + str(j2.row)].value))
                        flag = True
                        break
                if flag:
                    break
            if not flag:
                sheet2.append([i2.value, "无相关信息", "无相关信息", "无相关信息"])
                print(i2.value, "无相关信息", "无相关信息", "无相关信息")
    outputName = "AC排行榜信息表——ByteOJ" + input() + ".xlsx"
    workbook2.save(outputName)