package com.example.backend.models.vo.problem;

import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.post.PostsVo;
import lombok.Data;
import org.bouncycastle.math.ec.rfc8032.Ed448;

import java.io.Serializable;
import java.util.List;

@Data
public class SearchVo implements Serializable {
    private static final long serialVersionUID = -3152177973697652320L;
    /**
     * 算法试题列表
     */
    private List<ProblemAlgorithmBankVo> problemAlgorithmBankVoList;

    /**
     * 408考研试题/高等数学列表
     */
    private List<ProblemMath408BankVo> problemMath408BankVoList;

    /**
     * 帖子列表
     */
    private List<PostsVo> postsVoList;


    /**
     * 用户列表
     */
    private List<UserVo> userVoList;

    /**
     * 下面可随意扩展......
     */

    /**
     * 通用数据源
     */
    private List<?> dataList;
}
