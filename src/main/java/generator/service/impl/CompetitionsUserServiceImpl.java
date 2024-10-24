package generator.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.competiton.CompetitionsUser;
import generator.service.CompetitionsUserService;
import com.example.backend.mapper.CompetitionsUserMapper;
import org.springframework.stereotype.Service;

/**
* @author 89856
* @description 针对表【competitions_user(用户参与表)】的数据库操作Service实现
* @createDate 2024-08-30 19:16:52
*/
@Service
public class CompetitionsUserServiceImpl extends ServiceImpl<CompetitionsUserMapper, CompetitionsUser>
    implements CompetitionsUserService{

}




