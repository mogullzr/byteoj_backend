package com.example.backend.controller;

import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.utils.EmbeddingConvertUtil;
import com.example.backend.utils.RSAUtil;
import com.example.backend.utils.examAgent.GradingAgentUtil;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Map;

@RestController
public class RSAController {
    @Resource
    private EmbeddingConvertUtil embeddingConvertUtil;

    @Resource
    private GradingAgentUtil gradingAgentUtil;

    @GetMapping("/getPublicKey")
    public BaseResponse<String> getPublicKey() {
//        List<Long> IDS = new ArrayList<>();
//        for (int i = 4793; i < 5863; i++) {
//            IDS.add((long) i);
//        }
//        embeddingConvertUtil.InsertEmbedding(IDS);
//        return ResultUtils.success("");
        return ResultUtils.success(RSAUtil.getPublicKey());
    }

    /**
     * 演示：前端只传学生答题步骤图片 URL，题目信息由后端补齐。
     *
     * <p>真实业务里通常是前端传 problemId + imageUrl，后端用 problemId 查题目、总分、
     * 参考答案和解析，再调用 GradingAgentUtil。</p>
     */
    @GetMapping("/test")
    public BaseResponse<GradingAgentUtil.GradingResult> answer(String imageUrl) {
        GradingAgentUtil.GradingInput input = new GradingAgentUtil.GradingInput();
        input.setQuestionType("major_question");
        input.setTotalScore(12D);
        input.setQuestionContent("（本题满分 11 分）设二次型$f(x_{1}, x_{2}) = x_{1}^{2} - 4x_{1}x_{2} + 4x_{2}^{2}$经正交变换$\\left( \\begin{array}{c}\n" +
                "x_{1} \\\\\n" +
                "x_{2} \\\\\n" +
                "\\end{array} \\right) = Q \\left( \\begin{array}{c}\n" +
                "y_{1} \\\\\n" +
                "y_{2} \\\\\n" +
                "\\end{array} \\right)$化为二次型$g(y_{1}, y_{2}) = ay_{1}^{2} + 4y_{1}y_{2} + by_{2}^{2}$，其中$a ≥ b$。(I) 求$a$，$b$的值；(II) 求正交矩阵$Q$。");
        input.setReferenceAnswer("\n" +
                "(I)$a = 4$,$b = 1$\n" +
                "(II)$Q = \\frac{1}{5} \\left( \\begin{array}{cc}\n" +
                "4 & −3 \\\\\n" +
                "−3 & −4 \\\\\n" +
                "\\end{array} \\right)$\n");
        input.setSolutionExplanation("\n" +
                "(I) 记$A = \\left( \\begin{array}{cc}\n" +
                "1 & −2 \\\\\n" +
                "−2 & 4 \\\\\n" +
                "\\end{array} \\right)$，$B = \\left( \\begin{array}{cc}\n" +
                "a & 2 \\\\\n" +
                "2 & b \\\\\n" +
                "\\end{array} \\right)$，则$Q^{T}AQ = B$，且$A$与$B$相似，具有相同特征值。\n" +
                "计算特征多项式$∣λE - A∣ = λ^{2} - 5λ = 0$，解得特征值$λ_{1} = 0$，$λ_{2} = 5$。\n" +
                "同理，$∣λE - B∣ = λ^{2} - (a + b)λ + ab - 4 = 0$。由于特征值相同，比较系数得：\n" +
                "\n" +
                "$$\n" +
                "a + b = 5,  ab = 4.\n" +
                "$$\n" +
                "\n" +
                "又$a ≥ b$，解得$a = 4$，$b = 1$。\n" +
                "\n" +
                "(II) 当$λ_{1} = 0$时，求解$(0E - A)x = 0$，得基础解系$α_{1} = (2, 1)T$。\n" +
                "当$λ_{2} = 5$时，求解$(5E - A)x = 0$，得基础解系$α_{2} = (1, −2)T$。\n" +
                "对于矩阵$B$，当$λ_{1} = 0$时，$(0E - B)x = 0$的基础解系为$β_{1} = (1, −2)T$。\n" +
                "当$λ_{2} = 5$时，$(5E - B)x = 0$的基础解系为$β_{2} = (2, 1)T$。\n" +
                "令$P_{1} = \\left( \\begin{array}{cc}\n" +
                "2 & 1 \\\\\n" +
                "1 & −2 \\\\\n" +
                "\\end{array} \\right)$，$P_{2} = \\left( \\begin{array}{cc}\n" +
                "1 & 2 \\\\\n" +
                "−2 & 1 \\\\\n" +
                "\\end{array} \\right)$，则有：\n" +
                "\n" +
                "$$\n" +
                "P_{1}^{−1}AP_{1} = P_{2}^{−1}BP_{2} = \\left( \\begin{array}{cc}\n" +
                "0 & 0 \\\\\n" +
                "0 & 5 \\\\\n" +
                "\\end{array} \\right) .\n" +
                "$$\n" +
                "\n" +
                "因此，\n" +
                "\n" +
                "$$\n" +
                "B = P_{2}P_{1}^{−1}AP_{1}P_{2}^{−1}.\n" +
                "$$\n" +
                "\n" +
                "计算得：\n" +
                "\n" +
                "$$\n" +
                "P_{1}P_{2}^{−1} = \\frac{1}{5} \\left( \\begin{array}{cc}\n" +
                "4 & −3 \\\\\n" +
                "−3 & −4 \\\\\n" +
                "\\end{array} \\right) .\n" +
                "$$\n" +
                "\n" +
                "故正交矩阵为：\n" +
                "\n" +
                "$$\n" +
                "Q = \\frac{1}{5} \\left( \\begin{array}{cc}\n" +
                "4 & −3 \\\\\n" +
                "−3 & −4 \\\\\n" +
                "\\end{array} \\right) .\n" +
                "$$\n" +
                "\n");
        input.setRubric(null);
        input.setStudentAnswerImageUrl(imageUrl);
        input.setExtraContext(Map.of(
                "subject", "math",
                "grading_style", "strict_normal",
                "answer_source", "image"
        ));

        GradingAgentUtil.GradingResult result = gradingAgentUtil.gradeAnswerBlocking(input);
        return ResultUtils.success(result);
    }

    /**
     * 通用演示：如果你已经在别的业务代码里拼好了 GradingInput，可以直接 POST 进来测试。
     */
    @PostMapping("/test/grade")
    public BaseResponse<GradingAgentUtil.GradingResult> grade(@RequestBody GradingAgentUtil.GradingInput input) {
        GradingAgentUtil.GradingResult result = gradingAgentUtil.gradeAnswerBlocking(input);
        return ResultUtils.success(result);
    }
}
