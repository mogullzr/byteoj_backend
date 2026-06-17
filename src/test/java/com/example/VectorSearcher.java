package com.example;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

// 定义一个内部类或记录来承载结果
class SearchResult {
    public int id;
    public Long problem_id;
    public double similarityScore; // 相似度得分 (1 - 距离)

    public SearchResult(int id, Long problem_id, double score) {
        this.id = id;
        this.problem_id = problem_id;
        this.similarityScore = score;
    }
}

public class VectorSearcher {

    // 数据库连接信息
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";
    private static final String DB_USER = "postgres";
    private static final String DB_PASSWORD = "142398749lzr";

    /**
     * 搜索 Top 5 相似内容
     * @param queryVector 题目的向量 (float 数组，长度应为 4096)
     * @return 相似结果列表
     */
    public List<SearchResult> findTop5Similar(float[] queryVector) {
        List<SearchResult> results = new ArrayList<>();

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
                "ORDER BY embedding <=> (?::vector) " +
                "LIMIT 5";

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            // 3. 设置参数 (两次出现向量，一次用于计算分数，一次用于排序)
            pstmt.setString(1, vectorStr);
            pstmt.setString(2, vectorStr);

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int id = rs.getInt("id");
                    Long problem_id = rs.getLong("problem_id");
                    double score = rs.getDouble("similarity_score");

                    results.add(new SearchResult(id, problem_id, score));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("向量搜索失败", e);
        }

        return results;
    }
    public static float[] parseJsonToFloatArray(String jsonVector) throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        // JSON 数组通常解析为 List<Double>
        List<Double> doubleList = mapper.readValue(jsonVector, List.class);

        float[] result = new float[doubleList.size()];
        for (int i = 0; i < doubleList.size(); i++) {
            result[i] = doubleList.get(i).floatValue();
        }
        return result;
    }

    // 测试调用
    public static void main(String[] args) throws Exception {
        VectorSearcher searcher = new VectorSearcher();

        // 模拟一个 2048 维的向量 (实际应从你的 Embedding 模型获取)
        float[] myQuestionVector = new float[2048];
        String s = "";
        myQuestionVector = parseJsonToFloatArray(s);

        List<SearchResult> top5 = searcher.findTop5Similar(myQuestionVector);

        System.out.println("找到最相似的 5 条内容：");
        for (SearchResult res : top5) {
            System.out.printf("ID: %d, 相似度: %.4f, 题目ID: %s%n",
                    res.id, res.similarityScore, res.problem_id);
        }
    }
}