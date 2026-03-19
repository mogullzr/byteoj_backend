package com.example.backend.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.ProblemEmbeddingsMapper;
import com.example.backend.mapper.ProblemMath408BankMapper;
import com.example.backend.models.domain.math408.ProblemEmbeddings;
import com.example.backend.models.domain.math408.ProblemMath408Bank;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import com.example.backend.service.math408.ProblemMath408BankService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
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
    private JdbcTemplate jdbcTemplate;

    @Resource
    private ProblemMath408BankService problemMath408BankService;

    @Value("${hm.aliyun.embedding.url}")
    private String url;

    @Value("${hm.aliyun.embedding.accessKeyId}")
    private String accessKeyId;

    @Value("${hm.aliyun.embedding.model}")
    private String model;

    public List<String> ContentConvertToEmbedding(List<Long> problem_id_list) {
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
            String embedding = getEmebddingInfo(model, description.toString());
            ProblemEmbeddings problemEmbeddings = new ProblemEmbeddings();
            problemEmbeddings.setProblem_id(problemMath408Bank.getProblem_id());
            problemEmbeddings.setModel(model);
            problemEmbeddings.setStatus(problemMath408Bank.getStatus());
            problemEmbeddings.setEmbedding(embedding);

            problemEmbeddingsMapper.insert(problemEmbeddings);
            System.out.println(count.get());
            count.getAndIncrement();
        });
        return Collections.singletonList("");
    }

    public List<String> parseOptionString(String input) {
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

    private Map<Long, List<String>> getProblemMath408TagsWithNames(List<Long> problemIds) {
        // 1. 检查 problemIds 是否为空，如果为空，则直接返回空结果
        if (problemIds == null || problemIds.isEmpty()) {
            return new HashMap<>();
        }

        // 2. 创建结果容器
        Map<Long, List<String>> result = new HashMap<>();

        // 3. 循环查询每个 problem_id 对应的标签
        for (Long problemId : problemIds) {
            // 4. 构建查询语句：根据每个 problem_id 查找对应的标签
            String query = "SELECT t.tag_name " +
                    "FROM problem_math408_tags p " +
                    "JOIN problem_math408_tags_relation t ON p.tag_id = t.tag_id " +
                    "WHERE p.problem_id = ? " +
                    "AND p.is_delete = 0";

            List<String> tags = new ArrayList<>();
            try {
                // 5. 执行查询，获取该 problem_id 对应的所有标签
                tags = jdbcTemplate.queryForList(query, String.class, problemId);
            } catch (Exception e) {
                // 6. 捕获异常并处理
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "查询标签时发生错误: " + e.getMessage());
            }

            // 7. 将该 problem_id 和标签列表存入结果 Map
            result.put(problemId, tags);
        }

        // 8. 返回最终结果
        return result;
    }
    private String getEmebddingInfo(String model, String description) {
        // 开始转换为向量
        String jsonParams = String.format(
                "{\"model\":\"%s\",\"input\":\"%s\",\"encoding_format\":\"%s\"}",
                model,
                escapeJson(description),
                "float"
        );
        try {
            Document doc = Jsoup.connect(url)
                    .header("Content-Type", "application/json")
                    .header("Authorization", "Bearer " + accessKeyId)
                    .ignoreContentType(true) // 忽略内容类型检查
                    .requestBody(jsonParams)
                    .post();
            String jsonData = doc.text();
            ObjectMapper mapper = new ObjectMapper();
            JsonNode root = mapper.readTree(jsonData);
            JsonNode embeddingArray = root.get("data").get(0).get("embedding");

            return mapper.writeValueAsString(embeddingArray);
        } catch (IOException e) {
            throw new RuntimeException(e);
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
