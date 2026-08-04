package com.example.backend.controller;

import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.models.request.rbac.*;
import com.example.backend.models.vo.rbac.RBACRolesVo;
import com.example.backend.models.vo.rbac.RBACUserInfoVo;
import com.example.backend.service.rbac.RBACService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/RBAC")
@Slf4j
@Controller
public class RBACController {
    @Resource
    private RBACService rbacService;

    @PostMapping("/auth")
    @AccessLimit(seconds=3, maxCount=20, needLogin=true)
    private BaseResponse<Boolean> AdminAuthUser(@RequestBody RBACAuthUserRequest rbacAuthUserRequest, HttpServletRequest httpServletRequest) {
        Boolean result = rbacService.adminAuthUser(rbacAuthUserRequest);
        return ResultUtils.success(result);
    }

    @GetMapping("/role/get")
    @AccessLimit(seconds=3, maxCount=20, needLogin=true)
    private BaseResponse<List<RBACRolesVo>> AdminGetRoles(HttpServletRequest httpServletRequest) {
        List<RBACRolesVo> result = rbacService.adminGetRoles();
        return ResultUtils.success(result);
    }

    @PostMapping("/user/info")
    @AccessLimit(seconds=3, maxCount=20, needLogin=true)
    private BaseResponse<List<RBACUserInfoVo>> AdminGetUserInfo(@RequestBody RBACInfoSearchRequest rbacUserInfoSearchRequest, HttpServletRequest httpServletRequest) {
        List<RBACUserInfoVo> result = rbacService.adminGetUserInfo(rbacUserInfoSearchRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/role/create")
    @AccessLimit(seconds=3, maxCount=20, needLogin=true)
    private BaseResponse<Boolean> AdminSetRole(@RequestBody RBACRoleCreateRequest rbacRoleCreateRequest, HttpServletRequest httpServletRequest) {
        Boolean result = rbacService.adminSetRole(rbacRoleCreateRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/api/create")
    @AccessLimit(seconds=3, maxCount=20, needLogin=true)
    private BaseResponse<Boolean> AdminSetApi(@RequestBody RBACApiRequest rbacApiRequest, HttpServletRequest httpServletRequest) {
        Boolean result = rbacService.adminSetApi(rbacApiRequest);
        return ResultUtils.success(result);
    }

    @GetMapping("/api/get")
    @AccessLimit(seconds=3, maxCount=20, needLogin=true)
    private BaseResponse<List<RBACUserApiVo>> AdminGetApi(@RequestBody RBACInfoSearchRequest rbacInfoSearchRequest, HttpServletRequest httpServletRequest) {
        List<RBACUserApiVo> result = rbacService.AdminGetApi(rbacInfoSearchRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/auth/get")
    @AccessLimit(seconds=3, maxCount=20, needLogin=true)
    private BaseResponse<List<RBACUserAuthVo>> AdminGetAuth(@RequestBody RBACInfoSearchRequest rbacInfoSearchRequest, HttpServletRequest httpServletRequest) {
        List<RBACUserAuthVo> result = rbacService.AdminGetAuth(rbacInfoSearchRequest);
        return ResultUtils.success(result);
    }

    @PostMapping("/auth/create")
    @AccessLimit(seconds=3, maxCount=20, needLogin=true)
    private BaseResponse<Boolean> AdminSetAuth(@RequestBody RBACAuthCreateRequest rbacAuthCreateRequest, HttpServletRequest httpServletRequest) {
        Boolean result = rbacService.adminSetAuth(rbacAuthCreateRequest);
        return ResultUtils.success(result);
    }
}