package generator.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.log.LogWebsiteInfo;
import generator.service.LogWebsiteInfoService;
import com.example.backend.mapper.LogWebsiteInfoMapper;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【log_website_info(网站日志信息)】的数据库操作Service实现
* @createDate 2026-01-18 14:01:07
*/
@Service
public class LogWebsiteInfoServiceImpl extends ServiceImpl<LogWebsiteInfoMapper, LogWebsiteInfo>
    implements LogWebsiteInfoService{

}




