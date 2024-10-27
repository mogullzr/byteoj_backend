package com.example.backend.utils;


import cn.hutool.json.JSONUtil;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.alibaba.excel.metadata.data.ReadCellData;
import com.alibaba.excel.util.ListUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.backend.models.domain.competiton.ExcelData;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 有个很重要的点 TableListener 不能被spring管理，要每次读取excel都要new,然后里面用到spring可以构造方法传进去

/**
 * 读Excel监听器，暂时没有使用场景
 */
@Slf4j
@Data
public class TableListener extends AnalysisEventListener<Map<Integer, String>> {

    /**
     * 每隔5条存储数据库，实际使用中可以100条，然后清理list ，方便内存回收
     */
    private static final int BATCH_COUNT = 100;
    /**
     * 缓存的数据
     */
    private List<ExcelData> cachedDataList = ListUtils.newArrayListWithExpectedSize(BATCH_COUNT);

    //Excel表头（列名）数据缓存结构
    private Map<Integer, String> headTitleMap = new HashMap<>();
    /**
     * 这个每一条数据解析都会来调用
     *
     * @param data    one row value. Is same as {@link AnalysisContext#readRowHolder()}
     * @param context
     */
    @Override
    public void invoke(Map<Integer, String> data, AnalysisContext context) {
        log.info("解析到一条数据:{}", JSON.toJSONString(data));
//        log.info("解析到一条数据:{}", JSON.toJSONString(data));
//        cachedDataList.add(data);
        // 达到BATCH_COUNT了，需要去存储一次数据库，防止数据几万条数据在内存，容易OOM
//        if (cachedDataList.size() >= BATCH_COUNT) {
//            saveData();
            // 存储完成清理 list
//            cachedDataList = ListUtils.newArrayListWithExpectedSize(BATCH_COUNT);
//        }
    }

    /**
     * 解析表头数据
     **/
    @Override
    public void invokeHeadMap(Map<Integer, String> headMap, AnalysisContext context) {
        log.info("表头数据：{}", JSONObject.toJSONString(headMap));
        headTitleMap = headMap;
    }
    @Override
    public void invokeHead(Map<Integer, ReadCellData<?>> headMap, AnalysisContext context) {
        log.info("解析到一条头数据:{}", JSONUtil.parseObj(JSON.toJSONString(headMap)));
        // 如果想转成成 Map<Integer,String>
        // 方案1： 不要implements ReadListener 而是 extends AnalysisEventListener
        // 方案2： 调用 ConverterUtils.convertToStringMap(headMap, context) 自动会转换
    }
    /**
     * 所有数据解析完成了 都会来调用
     *
     * @param context
     */
    @Override
    public void doAfterAllAnalysed(AnalysisContext context) {
        // 这里也要保存数据，确保最后遗留的数据也存储到数据库
        saveData();
        log.info("所有数据解析完成！");
    }

    /**
     * 加上存储数据库
     */
    private void saveData() {
        log.info("存储数据！！！");
    }
}