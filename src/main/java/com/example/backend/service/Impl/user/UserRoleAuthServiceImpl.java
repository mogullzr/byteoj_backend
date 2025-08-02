package com.example.backend.service.Impl.user;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.UserRoleAuthMapper;
import com.example.backend.models.domain.user.UserRoleAuth;
import com.example.backend.service.user.UserRoleAuthService;
import org.springframework.stereotype.Service;

@Service
public class UserRoleAuthServiceImpl  extends ServiceImpl<UserRoleAuthMapper, UserRoleAuth>
        implements UserRoleAuthService {
}
