package com.example.backend.utils;

import cn.hutool.core.date.DateTime;
import com.aliyun.facebody20191230.models.MonitorExaminationResponse;
import com.aliyun.tea.TeaException;
import com.aliyun.tea.TeaModel;
import com.example.backend.models.vo.competition.CompetitionProctorVo;
import com.example.backend.models.vo.competition.ProcterBehaviorVo;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class OnlineProctorUtil {
    @Value("${aliyun.oss.accessKeyId}")
    private String accessKeyId;

    @Value("${aliyun.oss.accessKeySecret}")
    private String secretAccessKey;

    private static com.aliyun.facebody20191230.Client createClient(String accessKeyId, String accessKeySecret) throws Exception {
        /*
          初始化配置对象com.aliyun.teaopenapi.models.Config
          Config对象存放 AccessKeyId、AccessKeySecret、endpoint等配置
         */
        com.aliyun.teaopenapi.models.Config config = new com.aliyun.teaopenapi.models.Config()
                .setAccessKeyId(accessKeyId)
                .setAccessKeySecret(accessKeySecret);
        // 访问的域名
        config.endpoint = "facebody.cn-shanghai.aliyuncs.com";
        return new com.aliyun.facebody20191230.Client(config);
    }

    public CompetitionProctorVo ProcterOnlineMonitor(byte[] imageData) throws Exception {
        if (imageData == null || imageData.length == 0) {
            throw new IllegalArgumentException("图像数据不能为空");
        }

        com.aliyun.facebody20191230.Client client = OnlineProctorUtil.createClient(accessKeyId, secretAccessKey);

        // 将 byte[] 转为 InputStream
        InputStream imageStream = new ByteArrayInputStream(imageData);

        // 构造请求：传入 InputStream
        com.aliyun.facebody20191230.models.MonitorExaminationAdvanceRequest request =
                new com.aliyun.facebody20191230.models.MonitorExaminationAdvanceRequest()
                        .setImageURLObject(imageStream)
                        .setType(1L); // 1 表示在线监考场景

        com.aliyun.teautil.models.RuntimeOptions runtime = new com.aliyun.teautil.models.RuntimeOptions();

        try {
            MonitorExaminationResponse response = client.monitorExaminationAdvance(request, runtime);

            // 打印原始响应（调试用）
            System.out.println(com.aliyun.teautil.Common.toJSONString(TeaModel.buildMap(response)));

            // 解析响应并构建返回 VO
            return parseMonitorResponse(response);
        } catch (TeaException e) {
            System.err.println("阿里云 API 调用异常: " + com.aliyun.teautil.Common.toJSONString(e));
            throw new RuntimeException("监考分析失败: " + e.getMessage(), e);
        }
    }

    private CompetitionProctorVo parseMonitorResponse(MonitorExaminationResponse response) {
        CompetitionProctorVo vo = new CompetitionProctorVo();
        vo.setProcterTime(new DateTime());

        if (response == null || response.getBody() == null) {
            vo.setPersonNumber(0L);
            vo.setProcterBehavior(List.of(new ProcterBehaviorVo("error", "监考响应为空", "low")));
            return vo;
        }

        // 将整个 response 转为 Map
        Map<String, Object> responseMap = TeaModel.buildMap(response);
        Map<String, Object> body = (Map<String, Object>) responseMap.get("body");
        if (body == null) {
            vo.setPersonNumber(0L);
            vo.setProcterBehavior(List.of(new ProcterBehaviorVo("error", "body 为空", "low")));
            return vo;
        }

        Map<String, Object> data = (Map<String, Object>) body.get("Data");
        if (data == null) {
            vo.setPersonNumber(0L);
            vo.setProcterBehavior(List.of(new ProcterBehaviorVo("error", "data 为空", "low")));
            return vo;
        }

        // === 提取 PersonInfo ===
        Map<String, Object> personInfo = (Map<String, Object>) data.get("PersonInfo");
        Long personNumber = 0L;
        if (personInfo != null) {
            personNumber = (Long) personInfo.get("PersonNumber");
        }
        vo.setPersonNumber(personNumber);

        List<ProcterBehaviorVo> behaviors = new ArrayList<>();

        // 1. 多人检测
        if (personNumber > 1) {
            behaviors.add(new ProcterBehaviorVo(
                    "multiple_faces",
                    "检测到画面中有 " + personNumber + " 人，疑似他人协助",
                    "high"
            ));
        }

        // 2. 耳机检测
        if (personInfo != null) {
            Map<String, Object> earPhone = (Map<String, Object>) personInfo.get("EarPhone");
            if (earPhone != null) {
                Double score = toDouble(earPhone.get("Score"));
                Double threshold = toDouble(earPhone.get("Threshold"));
                if (score != null && threshold != null && score > threshold) {
                    behaviors.add(new ProcterBehaviorVo(
                            "wearing_earphone",
                            "检测到佩戴耳机，存在通讯作弊风险",
                            "medium"
                    ));
                }
            }

            // 3. 手机检测
            Map<String, Object> cellPhone = (Map<String, Object>) personInfo.get("CellPhone");
            if (cellPhone != null) {
                Double score = toDouble(cellPhone.get("Score"));
                Double threshold = toDouble(cellPhone.get("Threshold"));
                if (score != null && threshold != null && score > threshold) {
                    behaviors.add(new ProcterBehaviorVo(
                            "using_cellphone",
                            "检测到使用手机，疑似查看资料",
                            "high"
                    ));
                }
            }
        }

        // 4. 头部姿态：从 faceInfo 数组取第一个
        Map<String, Object> faceInfo = (Map<String, Object>) data.get("FaceInfo");
        if (faceInfo != null && !faceInfo.isEmpty()) {
            Map<String, Object> pose = (Map<String, Object>) faceInfo.get("Pose");

            if (pose != null) {
                Double yaw = toDouble(pose.get("Yaw"));
                Double pitch = toDouble(pose.get("Pitch"));
                boolean abnormal = false;
                String direction = "";

                if (yaw != null && Math.abs(yaw) > 15) {
                    abnormal = true;
                    direction = yaw > 0 ? "向右" : "向左";
                } else if (pitch != null && Math.abs(pitch) > 15) {
                    abnormal = true;
                    direction = pitch > 0 ? "抬头" : "低头";
                }

                if (abnormal) {
                    String desc = String.format("头部%s偏转过大（Yaw=%.1f°, Pitch=%.1f°），疑似查看外部物品",
                            direction, yaw != null ? yaw : 0, pitch != null ? pitch : 0);
                    behaviors.add(new ProcterBehaviorVo(
                            "abnormal_head_pose",
                            desc,
                            "medium"
                    ));
                }
            }
        }

        // 选择最严重行为
        ProcterBehaviorVo finalBehavior;
        if (behaviors.isEmpty()) {
            finalBehavior = new ProcterBehaviorVo("normal", "未检测到异常行为", "low");
            behaviors.add(finalBehavior);
        }

        vo.setProcterBehavior(behaviors);
        return vo;
    }

    // 辅助方法：安全转换为 Double
    private Double toDouble(Object obj) {
        if (obj == null) return null;
        if (obj instanceof Double) return (Double) obj;
        if (obj instanceof Float) return ((Float) obj).doubleValue();
        if (obj instanceof Integer) return ((Integer) obj).doubleValue();
        if (obj instanceof Long) return ((Long) obj).doubleValue();
        try {
            return Double.parseDouble(obj.toString());
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
