package com.example.backend.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.mapper.ProblemEmbeddingsMapper;
import com.example.backend.mapper.ProblemMath408BankMapper;
import com.example.backend.models.domain.math408.ProblemEmbeddingSearch;
import com.example.backend.models.domain.math408.ProblemEmbeddings;
import com.example.backend.models.domain.math408.ProblemMath408Bank;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.service.math408.ProblemMath408BankService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.postgresql.util.PGobject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.sql.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;



@Service
public class EmbeddingConvertUtil {

    @Resource
    private ProblemEmbeddingsMapper problemEmbeddingsMapper;

    @Resource
    private ProblemMath408BankMapper problemMath408BankMapper;

    @Resource
    private ProblemMath408BankService problemMath408BankService;

    @Value("${hm.aliyun.embedding.url}")
    private String url;

    @Value("${hm.aliyun.embedding.accessKeyId}")
    private String accessKeyId;

    @Value("${hm.aliyun.embedding.model}")
    private String model;

    @Value("${spring.datasource.dynamic.datasource.pg.username}")
    private String dbUsername;

    @Value("${spring.datasource.dynamic.datasource.pg.password}")
    private String dbPassword;

    @Value("${spring.datasource.dynamic.datasource.pg.url}")
    private String dbUrl;
    /**
     * 搜索 Top 5 相似内容
     * @param queryVector 题目的向量 (float 数组，长度应为 2048)
     * @return 相似结果列表
     */
    public List<ProblemEmbeddingSearch> findTop5Similar(float[] queryVector, Long problem_id) {
        List<ProblemEmbeddingSearch> results = new ArrayList<>();

        // 1. 将 float[] 转换为 pgvector 需要的字符串格式: "[0.1, 0.2, ...]"
        StringBuilder vectorBuilder = new StringBuilder("[");
        for (int i = 0; i < queryVector.length; i++) {
            vectorBuilder.append(queryVector[i]);
            if (i < queryVector.length - 1) {
                vectorBuilder.append(",");
            }
        }
        vectorBuilder.append("]");
        String vectorStr = vectorBuilder.toString();

        // 2. SQL 语句
        // 注意：这里使用 <=> 计算余弦距离。距离越小越相似。
        // 我们顺便计算一下 (1 - 距离) 作为相似度得分 (0~1之间)，方便理解
        String sql = "SELECT id, problem_id, (1 - (embedding <=> (?::vector))) AS similarity_score " +
                "FROM problem_embeddings " +
                "WHERE problem_id != ? " +
                "ORDER BY embedding <=> (?::vector) " +
                "LIMIT 6";

        try (Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            // 3. 设置参数 (两次出现向量，一次用于计算分数，一次用于排序)
            pstmt.setString(1, vectorStr);
            pstmt.setLong(2, problem_id);
            pstmt.setString(3, vectorStr);

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int id = rs.getInt("id");
                    Long problemId = rs.getLong("problem_id");
                    double score = rs.getDouble("similarity_score");

                    results.add(new ProblemEmbeddingSearch(id, problemId, score));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("向量搜索失败", e);
        }

        return results;
    }

    /**
     * 根据试题向量数据查询相似度最高的5道题目
     *
     * @param problem_id 问题ID
     * @return 相似题目
     */
    public List<Long> EmbeddingSearch(Long problem_id) throws SQLException {
        float[] myQuestionVector = new float[2048];

        myQuestionVector = getEmbedding(problem_id);

        List<ProblemEmbeddingSearch> top5 = findTop5Similar(myQuestionVector, problem_id);

        // 获取相似度最高的 5 道题目
        List<Long> problemIds = new ArrayList<>();
        for (ProblemEmbeddingSearch res : top5) {
            System.out.printf("ID: %d, 相似度: %.4f, 题目ID: %s%n",
                    res.id, res.similarityScore, res.problem_id);
            problemIds.add(res.problem_id);
        }

        return problemIds;
    }

    /**
     * 获取向量数据
     *
     * @param problemId 问题ID
     * @return 返回向量数据
     * @throws SQLException
     */
    private float[] getEmbedding(Long problemId) throws SQLException {
        String sql = "SELECT embedding FROM problem_embeddings WHERE problem_id = ?";

        try (Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setLong(1, problemId);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String vecStr = rs.getString("embedding");
                // 去掉首尾方括号，按逗号分割，转为 float 数组
                String[] parts = vecStr.substring(1, vecStr.length() - 1).split(",");
                float[] vector = new float[parts.length];
                for (int i = 0; i < parts.length; i++) {
                    vector[i] = Float.parseFloat(parts[i]);
                }
                return vector;
            }
            return null; // 没找到
        }
    }
    /**
     * 将题目转为向量信息并且插入pg当众
     * @param problem_id_list 问题ID列表
     * @return 是否插入成功
     */
    public Boolean InsertEmbedding(List<Long> problem_id_list) {
        QueryWrapper<ProblemEmbeddings> problemEmbeddingsQueryWrapper = new QueryWrapper<>();
        QueryWrapper<ProblemMath408Bank> problemMath408BankQueryWrapper = new QueryWrapper<>();

        problem_id_list.forEach(problem_id->{
            problemEmbeddingsQueryWrapper.eq("problem_id", problem_id).or();
            problemMath408BankQueryWrapper.eq("problem_id", problem_id).or();
        });

        // 删初之前的向量信息
        problemEmbeddingsMapper.delete(problemEmbeddingsQueryWrapper);

        // 获取题目信息
        AtomicInteger count = new AtomicInteger(Math.toIntExact(problem_id_list.get(0)));
        List<ProblemMath408Bank> problemMath408BankList = problemMath408BankMapper.selectList(problemMath408BankQueryWrapper);
        problemMath408BankList.forEach(problemMath408Bank->{
            ProblemMath408BankVo problemMath408BankVo = problemMath408BankService.problemSearchByProblemId(problemMath408Bank.getProblem_id());
            StringBuilder description = new StringBuilder(problemMath408Bank.getDescription());


            // 选项
            List<String> options = parseOptionString(problemMath408BankVo.getOptions());
            for (int i = 0; i < options.size(); i++) {
                description.append('\n').append(String.valueOf((char) ('A' + i))).append('.').append(options.get(i));
            }
            description.append('\n');

            // 标签
            description.append("标签:").append(problemMath408BankVo.getTagsList());
            description = new StringBuilder(compressMathProblem(String.valueOf(description)));
            PGobject embedding = getEmebddingInfo(model, description.toString());
            ProblemEmbeddings problemEmbeddings = new ProblemEmbeddings();
            problemEmbeddings.setProblem_id(problemMath408Bank.getProblem_id());
            problemEmbeddings.setModel(model);
            problemEmbeddings.setStatus(problemMath408Bank.getStatus());
            problemEmbeddings.setEmbedding(embedding);

            problemEmbeddingsMapper.insert(problemEmbeddings);
            System.out.println(count.get());
            count.getAndIncrement();

            // 限速
//            try {
//                Thread.sleep(1000L);
//            } catch (InterruptedException e) {
//                throw new RuntimeException(e);
//            }
        });
        return true;
    }

    private List<String> parseOptionString(String input) {
        List<String> result = new ArrayList<>();
        // 匹配所有 '...' 内容（支持跨行）
        Pattern pattern = Pattern.compile("'([^']*)'");
        Matcher matcher = pattern.matcher(input);

        while (matcher.find()) {
            result.add(matcher.group(1)); // group(1) 是括号内的内容
        }
        return result;
    }

    private String compressMathProblem(String problem) {
        return problem
                // 1. 合并所有空白字符（包括换行）
                .replaceAll("\\s+", " ")

                // 2. 简化分数 \frac{a}{b} → a/b
                .replaceAll("\\$\\\\frac\\{(\\d+)\\}\\{(\\d+)\\}\\$", "$1/$2")

                // 3. 简化向量 ( x_n \\ y_n ) → [xₙ, yₙ]
                .replaceAll(
                        "\\$\\\\left\\( \\\\begin\\{array\\}\\{c\\}\\s*([a-zA-Z0-9_{}$]+)\\s*\\\\\\\\\\s*([a-zA-Z0-9_{}$]+)\\s*\\\\end\\{array\\} \\\\right\\)\\$",
                        "[$1, $2]"
                )

                // 4. 简化下标 x_{n} → xₙ（可选，或保留 x_n）
                .replaceAll("\\$([a-zA-Z])_\\{([a-zA-Z0-9]+)\\}\\$", "$1_$2")

                // 5. 删除冗余词（示例）
                .replace("某试验性生产线", "生产线")
                .replace("每年一月份进行", "每年1月")
                .replace("支援其他生产部门", "调出")
                .replace("其缺额由招收新的非熟练工补齐", "缺额由新非熟练工补")
                .replace("经过培训及实践至年终考核有", "年终有")

                .trim();
    }

    /**
     * 向量数据转换请求
     *
     * @param model 模型名称
     * @param description 需要转换的描述信息
     * @return 转换后的向量数据
     */
    private PGobject getEmebddingInfo(String model, String description) {
        // 构建请求参数 (只构建一次)
        String jsonParams = String.format(
                "{\"model\":\"%s\",\"input\":\"%s\",\"dimension\": 2048, \"encoding_format\": \"float\"\n}",
                model,
                escapeJson(description)
        );

        int fastRetries = 0;
        int maxFastRetries = 3;
        int totalAttempts = 0;

        while (true) { // 无限循环，直到成功返回
            totalAttempts++;
            try {
                System.out.println("🚀 正在尝试获取 Embedding (第 " + totalAttempts + " 次请求)...");

                // --- 核心配置：设置 30 秒超时 ---
                Document doc = Jsoup.connect(url)
                        .header("Content-Type", "application/json")
                        .header("Authorization", "Bearer " + accessKeyId)
                        .ignoreContentType(true)
                        .requestBody(jsonParams)
                        .timeout(120000) // 30秒超时，给大模型足够的计算时间
                        .post();

                // --- 解析响应 ---
                String jsonData = doc.text();
                ObjectMapper mapper = new ObjectMapper();
                JsonNode root = mapper.readTree(jsonData);

                // 检查业务错误 (如 API Key 无效、配额用完等)
                if (root.has("error")) {
                    String errorMsg = root.get("error").toString();
                    System.err.println("❌ API 返回业务错误 (不重试): " + errorMsg);
                    // 如果是业务错误 (如 401, 403)，重试通常没用，直接抛出异常停止
                    throw new RuntimeException("API 业务错误: " + errorMsg);
                }

                JsonNode embeddingArray = root.get("data").get(0).get("embedding");

                // --- 构建向量字符串 ---
                StringBuilder sb = new StringBuilder();
                sb.append("[");
                for (int i = 0; i < embeddingArray.size(); i++) {
                    if (i > 0) sb.append(",");
                    sb.append(embeddingArray.get(i).asDouble());
                }
                sb.append("]");

                // --- 创建 PGobject ---
                PGobject pGobject = new PGobject();
                pGobject.setType("vector");
                pGobject.setValue(sb.toString());

                System.out.println("✅ 获取 Embedding 成功！(总共尝试了 " + totalAttempts + " 次)");
                return pGobject; // 成功！跳出无限循环

            } catch (IOException e) {
                // 只有网络异常或超时才重试，业务异常上面已经抛出了
                String errorMsg = e.getMessage();
                boolean isTimeout = e instanceof SocketTimeoutException || (errorMsg != null && errorMsg.contains("timed out"));

                System.err.println("⚠️ 第 " + totalAttempts + " 次请求失败: " + (isTimeout ? "超时" : "网络错误") + " - " + e.getMessage());

                // --- 智能退避策略 ---
                long waitTimeSeconds;

                if (fastRetries < maxFastRetries) {
                    // 阶段 1: 快速重试 (前 3 次)
                    fastRetries++;
                    waitTimeSeconds = 1;
                    System.out.println("⏳ 进入快速重试模式，等待 " + waitTimeSeconds + " 秒后重试... (快速重试剩余: " + (maxFastRetries - fastRetries) + ")");
                } else {
                    // 阶段 2: 长等待重试 (3 次失败后)
                    waitTimeSeconds = 30;
                    System.out.println("⏳ 进入长等待模式，等待 " + waitTimeSeconds + " 秒后再次尝试... (已持续尝试 " + totalAttempts + " 次)");
                }

                try {
                    Thread.sleep(waitTimeSeconds * 1000);
                } catch (InterruptedException ie) {
                    Thread.currentThread().interrupt();
                    System.err.println("❌ 重试过程被外部中断，停止尝试。");
                    throw new RuntimeException("获取 Embedding 过程中断", ie);
                }
                // 循环继续，进行下一次尝试
            } catch (SQLException e) {
                // PGobject 构造错误通常不是网络问题，直接抛出
                throw new RuntimeException("向量对象构造失败", e);
            }
        }
    }
    // 简单的 JSON 字符串转义（处理引号、换行等）
    private static String escapeJson(String str) {
        if (str == null) return "";
        return str.replace("\\", "\\\\")
                .replace("\"", "\\\"")
                .replace("\n", "\\n")
                .replace("\r", "\\r")
                .replace("\t", "\\t");
    }
}
