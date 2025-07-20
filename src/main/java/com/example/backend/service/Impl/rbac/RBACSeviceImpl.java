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
import com.example.backend.service.user.UserRoleService;
import com.example.backend.utils.EmailSendUtil;
import com.example.backend.utils.SendQQTokenMessageUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
public class RBACSeviceImpl extends ServiceImpl<UserRoleRelationMapper, UserRoleRelation> implements RBACService {
    @Resource
    private EmailSendUtil emailSendUtil;

    @Resource
    private UserMapper userMapper;

    @Resource
    private RBACService rbacService;

    @Resource
    private UserRoleAuthService userRoleAuthService;

    @Resource
    private UserApiAuthService userApiAuthService;

    @Resource
    private UserRoleRelationMapper userRoleRelationMapper;

    @Resource
    private UserRoleAuthMapper userRoleAuthMapper;

    @Resource
    private UserRoleMapper userRoleMapper;

    @Resource
    private UserAuthMapper userAuthMapper;

    @Resource
    private UserApiAuthMapper userApiAuthMapper;

    @Resource
    private UserApiMapper userApiMapper;

    @Override
    public Boolean adminAuthUser(RBACAuthUserRequest rbacAuthUserRequest) {
        List<Integer> role_id_list = rbacAuthUserRequest.getRole_id();
        Long uuid = rbacAuthUserRequest.getUuid();
        List<String> role_names = new ArrayList<>();

        // 1.查询用户和角色是否存在
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        QueryWrapper<UserRole> userRoleQueryWrapper = new QueryWrapper<>();

        userQueryWrapper.eq("uuid", uuid);
        User user = userMapper.selectOne(userQueryWrapper);
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的用户");
        }

        for (Integer role_id : role_id_list) {
            userRoleQueryWrapper = new QueryWrapper<>();
            userRoleQueryWrapper.eq("id", role_id);
            UserRole userRole = userRoleMapper.selectOne(userRoleQueryWrapper);
            if (userRole == null) {
                throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "存在未知的管理权限角色");
            } else {
                role_names.add(userRole.getDescription());
            }
        }

        // 2.开始授权
        // 2.1.先删除用户的所有权限
        userRoleRelationMapper.delete(new QueryWrapper<UserRoleRelation>().eq("uuid", uuid));

        // 2.2.再插入用户指定的权限
        List<UserRoleRelation> userRoleRelationList = new ArrayList<>();
        for (Integer role_id : role_id_list) {
            UserRoleRelation userRoleRelation = new UserRoleRelation();
            userRoleRelation.setUuid(uuid);
            userRoleRelation.setRole_id(role_id);

            userRoleRelationList.add(userRoleRelation);
        }

        // 发送QQ邮箱
        emailSendUtil.sendRoleAssignmentEmail(user.getEmail(), role_names);

        return rbacService.saveBatch(userRoleRelationList);
    }

    @Override
    public List<RBACRolesVo> adminGetRoles() {
        // Step 1: Fetch all roles in one query
        List<UserRole> userRoles = userRoleMapper.selectList(null);

        // Step 2: Collect all role IDs
        Set<Integer> roleIds = userRoles.stream()
                .map(UserRole::getId)
                .collect(Collectors.toSet());

        // Step 3: Fetch all role-auth mappings for all role IDs in one query
        QueryWrapper<UserRoleAuth> roleAuthQueryWrapper = new QueryWrapper<>();
        roleAuthQueryWrapper.in("role_id", roleIds);
        List<UserRoleAuth> userRoleAuths = userRoleAuthMapper.selectList(roleAuthQueryWrapper);

        // Step 4: Collect all auth IDs from role-auth mappings
        Set<Integer> authIds = userRoleAuths.stream()
                .map(UserRoleAuth::getAuth_id)
                .collect(Collectors.toSet());

        // Step 5: Fetch all auth details in one query
        QueryWrapper<UserAuth> authQueryWrapper = new QueryWrapper<>();
        authQueryWrapper.in("id", authIds);
        List<UserAuth> userAuths = userAuthMapper.selectList(authQueryWrapper);

        // Step 6: Create a map of auth_id to UserAuth for quick lookup
        Map<Integer, UserAuth> authMap = userAuths.stream()
                .collect(Collectors.toMap(UserAuth::getId, auth -> auth));

        // Step 7: Group role-auth mappings by role_id for quick lookup
        Map<Integer, List<UserRoleAuth>> roleAuthMap = userRoleAuths.stream()
                .collect(Collectors.groupingBy(UserRoleAuth::getRole_id));

        // Step 8: Build the response
        List<RBACRolesVo> rbacRolesVos = new ArrayList<>();
        for (UserRole userRole : userRoles) {
            RBACRolesVo rolesVo = new RBACRolesVo();
            rolesVo.setRole_name(userRole.getRole());
            rolesVo.setDescription(userRole.getDescription());
            rolesVo.setRole_id(userRole.getId());

            // Get auths for this role
            List<UserRoleAuth> roleAuths = roleAuthMap.getOrDefault(userRole.getId(), Collections.emptyList());
            List<RBACUserAuthVo> userAuthVos = roleAuths.stream()
                    .map(roleAuth -> {
                        RBACUserAuthVo authVo = new RBACUserAuthVo();
                        authVo.setAuth_id(roleAuth.getAuth_id());
                        UserAuth userAuth = authMap.get(roleAuth.getAuth_id());
                        authVo.setAuth_name(userAuth != null ? userAuth.getName() : null);
                        return authVo;
                    })
                    .filter(authVo -> authVo.getAuth_name() != null) // Filter out invalid auths
                    .collect(Collectors.toList());

            rolesVo.setUser_auth_list(userAuthVos);
            rbacRolesVos.add(rolesVo);
        }

        return rbacRolesVos;
    }

    @Override
    public List<RBACUserInfoVo> adminGetUserInfo(RBACInfoSearchRequest rbacUserInfoSearchRequest) {
        String keyword = rbacUserInfoSearchRequest.getKeyword();
        Integer pageNum = rbacUserInfoSearchRequest.getPageNum();
        Integer pageSize = rbacUserInfoSearchRequest.getPageSize();
        List<RBACUserInfoVo> rbacUserInfoVos = new ArrayList<>();

        Page<User> userPage = new Page<>(pageNum, pageSize);
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();

        if (keyword != null && !keyword.isEmpty()) {
            userQueryWrapper.like("username", keyword);
            userQueryWrapper.or().like("email", keyword);
        }

        Page<User> pageInfo = userMapper.selectPage(userPage, userQueryWrapper);
        List<User> recordInfo = pageInfo.getRecords();

        List<RBACRolesVo> rbacRolesVos = adminGetRoles();

        for (User user : recordInfo) {
            RBACUserInfoVo userInfoVo = new RBACUserInfoVo();

            UserVo userVo = new UserVo();
            userVo.setUuid(user.getUuid());
            userVo.setAccount(user.getAccount());
            userVo.setUsername(user.getUsername());
            userVo.setCreate_time(user.getCreate_time());
            userVo.setTags(user.getTags());
            userVo.setGender(user.getGender());
            userVo.setPhone(user.getPhone());
            userVo.setRating(user.getRating());
            userVo.setEmail(user.getEmail());
            userVo.setAvatar(user.getAvatar());
            userVo.setSchool(user.getSchool());
            userVo.setPages((int) pageInfo.getTotal());

            userInfoVo.setUserVo(userVo);

            // 查找该用户的权限
            QueryWrapper<UserRoleRelation> userRoleRelationQueryWrapper = new QueryWrapper<>();
            userRoleRelationQueryWrapper.eq("uuid", user.getUuid());

            List<UserRoleRelation> rolesList = userRoleRelationMapper.selectList(userRoleRelationQueryWrapper);
            List<RBACRolesVo> rbacRolesVo = new ArrayList<>();
            for (UserRoleRelation userRoleRelation : rolesList) {
                RBACRolesVo insertData = new RBACRolesVo();

                insertData.setRole_id(userRoleRelation.getRole_id());
                for (RBACRolesVo rolesVo : rbacRolesVos) {
                    if (rolesVo.getRole_id().equals(userRoleRelation.getRole_id())) {
                        insertData.setRole_name(rolesVo.getRole_name());
                        insertData.setDescription(rolesVo.getDescription());
                        break;
                    }
                }

                rbacRolesVo.add(insertData);
            }

            userInfoVo.setRoles(rbacRolesVo);
            rbacUserInfoVos.add(userInfoVo);
        }

        return rbacUserInfoVos;
    }

    @Override
    public Boolean adminSetRole(RBACRoleCreateRequest rbacRoleCreateRequest) {
        String roleName = rbacRoleCreateRequest.getRole_name();
        String description = rbacRoleCreateRequest.getDescription();
        List<Integer> authIdList = rbacRoleCreateRequest.getAuth_id_list();

        // 1.创建该角色(如果不存在)
        QueryWrapper<UserRole> userRoleQueryWrapper = new QueryWrapper<>();
        userRoleQueryWrapper.eq("role", roleName);
        UserRole userRole = userRoleMapper.selectOne(userRoleQueryWrapper);

        if (userRole == null) {
            userRole = new UserRole();
            userRole.setRole(roleName);
            userRole.setDescription(description);
            userRoleMapper.insert(userRole);
        }

        // 2.设定权限
        Integer role_id = userRole.getId();

        userRoleAuthMapper.delete(new QueryWrapper<UserRoleAuth>().eq("role_id", role_id));

        List<UserRoleAuth> userRoleAuths = new ArrayList<>();

        for (Integer auth_id : authIdList) {
            UserRoleAuth userRoleAuth = new UserRoleAuth();

            userRoleAuth.setRole_id(role_id);
            userRoleAuth.setAuth_id(auth_id);

            userRoleAuths.add(userRoleAuth);
        }

        return userRoleAuthService.saveBatch(userRoleAuths);
    }

    @Override
    public Boolean adminSetApi(RBACApiRequest rbacApiRequest) {
        Integer apiType = rbacApiRequest.getApi_type();
        String apiUrl = rbacApiRequest.getApi_url();
        String description = rbacApiRequest.getDescription();

        // 1.查看是否存在这样的地址
        QueryWrapper<UserApi> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("path", apiUrl);

        UserApi userApi = userApiMapper.selectOne(queryWrapper);
        if (userApi == null) {
            userApi.setApi_type(apiType);
            userApi.setDescription(description);
            userApi.setPath(apiUrl);

            return userApiMapper.insert(userApi) == 1;
        } else {
            userApi.setApi_type(apiType);
            userApi.setDescription(description);
            userApi.setPath(apiUrl);

            return userApiMapper.updateById(userApi) == 1;
        }
    }

    @Override
    public List<RBACUserApiVo> AdminGetApi(RBACInfoSearchRequest rbacInfoSearchRequest) {
        String keyword = rbacInfoSearchRequest.getKeyword();

        QueryWrapper<UserApi> queryWrapper = new QueryWrapper<>();

        if (keyword != null && !keyword.isEmpty()) {
            queryWrapper.like("path", keyword);
            queryWrapper.or().like("description", keyword);
        }

        List<UserApi> userApis = userApiMapper.selectList(queryWrapper);
        List<RBACUserApiVo> rbacUserApiVos = new ArrayList<>();
        for (UserApi record : userApis) {
            RBACUserApiVo rbacUserApiVo = new RBACUserApiVo();
            rbacUserApiVo.setApi_url(record.getPath());
            rbacUserApiVo.setDescription(record.getDescription());
            rbacUserApiVo.setApi_id(record.getId());

            rbacUserApiVos.add(rbacUserApiVo);
        }

        return rbacUserApiVos;
    }

    @Override
    public List<RBACUserAuthVo> AdminGetAuth(RBACInfoSearchRequest rbacInfoSearchRequest) {
        List<UserAuth> userAuths = userAuthMapper.selectList(null);

        List<RBACUserAuthVo> rbacUserAuthVos = new ArrayList<>();
        for (UserAuth record : userAuths) {
            RBACUserAuthVo rbacUserAuthVo = new RBACUserAuthVo();
            rbacUserAuthVo.setAuth_name(record.getName());
            rbacUserAuthVo.setAuth_id(record.getId());

            rbacUserAuthVos.add(rbacUserAuthVo);
        }

        return rbacUserAuthVos;
    }

    @Override
    public Boolean adminSetAuth(RBACAuthCreateRequest rbacAuthCreateRequest) {
        String authName = rbacAuthCreateRequest.getAuth_name();
        List<Integer> apiIdList = rbacAuthCreateRequest.getApi_id_list();

        // 1.权限是否存在
        QueryWrapper<UserAuth> userAuthQueryWrapper = new QueryWrapper<>();
        userAuthQueryWrapper.eq("name", authName);

        RBACInfoSearchRequest rbacApiRequest = new RBACInfoSearchRequest();
        List<RBACUserApiVo> rbacUserApiVos = AdminGetApi(rbacApiRequest);

        UserAuth userAuth = userAuthMapper.selectOne(userAuthQueryWrapper);
        List<UserApiAuth> userApiAuths = new ArrayList<>();
        if (userAuth == null) {
            userAuth = new UserAuth();
            userAuth.setName(authName);

            userAuthMapper.insert(userAuth);

        }

        // 删除所有的权限
        userApiAuthMapper.delete(new QueryWrapper<UserApiAuth>().eq("auth_id", userAuth.getId()));

        for (Integer apiId : apiIdList) {
            UserApiAuth userApiAuth = new UserApiAuth();
            userApiAuth.setApi_id(apiId);

            userApiAuth.setAuth_id(userAuth.getId());

            userApiAuths.add(userApiAuth);
        }
        return userApiAuthService.saveBatch(userApiAuths);
    }
}
