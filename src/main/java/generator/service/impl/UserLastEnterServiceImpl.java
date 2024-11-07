package generator.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.algorithm.UserLastEnter;
import generator.service.UserLastEnterService;
import com.example.backend.mapper.UserLastEnterMapper;
import org.springframework.stereotype.Service;

/**
* @author 89856
* @description 针对表【user_last_enter】的数据库操作Service实现
* @createDate 2024-11-07 11:47:33
*/
@Service
public class UserLastEnterServiceImpl extends ServiceImpl<UserLastEnterMapper, UserLastEnter>
    implements UserLastEnterService{

}




