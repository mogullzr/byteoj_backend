package com.example.backend.service.Impl.user;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.UserRoleRelationMapper;
import com.example.backend.models.domain.user.UserRoleRelation;
import com.example.backend.service.user.UserRoleRelationService;
import org.springframework.stereotype.Service;

/**
* @author 89856
* @description 针对表【user_role_relation(用户角色关联表)】的数据库操作Service实现
* @createDate 2025-04-03 13:15:23
*/
@Service
public class UserRoleRelationServiceImpl extends ServiceImpl<UserRoleRelationMapper, UserRoleRelation>
    implements UserRoleRelationService{

}




