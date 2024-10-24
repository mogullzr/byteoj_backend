package generator.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.algorithm.submission.SubmissionsAlgorithm;
import generator.service.SubmissionsAlgorithmService;
import com.example.backend.mapper.SubmissionsAlgorithmMapper;
import org.springframework.stereotype.Service;

/**
* @author 89856
* @description 针对表【submissions_algorithm(评测表)】的数据库操作Service实现
* @createDate 2024-08-27 20:33:46
*/
@Service
public class SubmissionsAlgorithmServiceImpl extends ServiceImpl<SubmissionsAlgorithmMapper, SubmissionsAlgorithm>
    implements SubmissionsAlgorithmService{

}




