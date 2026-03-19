package generator.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.math408.ProblemEmbeddings;
import generator.service.ProblemEmbeddingsService;
import com.example.backend.mapper.ProblemEmbeddingsMapper;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【problem_embeddings(向量数据表)】的数据库操作Service实现
* @createDate 2026-03-18 23:18:15
*/
@Service
public class ProblemEmbeddingsServiceImpl extends ServiceImpl<ProblemEmbeddingsMapper, ProblemEmbeddings>
    implements ProblemEmbeddingsService{

}




