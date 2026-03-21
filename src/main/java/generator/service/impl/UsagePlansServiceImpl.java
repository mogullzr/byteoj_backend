package generator.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.usage.UsagePlans;
import generator.service.UsagePlansService;
import com.example.backend.mapper.UsagePlansMapper;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【usage_plans(使用额度表)】的数据库操作Service实现
* @createDate 2026-03-21 01:14:40
*/
@Service
public class UsagePlansServiceImpl extends ServiceImpl<UsagePlansMapper, UsagePlans>
    implements UsagePlansService{

}




