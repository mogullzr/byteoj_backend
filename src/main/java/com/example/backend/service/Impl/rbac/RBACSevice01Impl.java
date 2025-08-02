package com.example.backend.service.Impl.rbac;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.user.*;
import com.example.backend.models.request.rbac.*;
import com.example.backend.models.vo.UserVo;
import com.example.backend.models.vo.rbac.RBACRolesVo;
import com.example.backend.models.vo.rbac.RBACUserInfoVo;
import com.example.backend.service.rbac.RBACService;
import com.example.backend.service.user.UserApiAuthService;
import com.example.backend.service.user.UserRoleAuthService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
public class RBACSevice01Impl extends ServiceImpl<UserApiAuthMapper, UserApiAuth> implements UserApiAuthService {
}
