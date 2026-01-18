package com.example.backend.service.Impl.procter;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.procter.ProcterInfo;
import com.example.backend.service.procter.ProcterInfoService;
import com.example.backend.mapper.ProcterInfoMapper;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【procter_info(监控信息表)】的数据库操作Service实现
* @createDate 2026-01-15 19:11:36
*/
@Service
public class ProcterInfoServiceImpl extends ServiceImpl<ProcterInfoMapper, ProcterInfo>
    implements ProcterInfoService{

}




