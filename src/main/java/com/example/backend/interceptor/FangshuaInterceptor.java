package com.example.backend.interceptor;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.mapper.UserApiAuthMapper;
import com.example.backend.mapper.UserApiMapper;
import com.example.backend.mapper.UserRoleAuthMapper;
import com.example.backend.mapper.UserRoleRelationMapper;
import com.example.backend.models.domain.user.*;
import com.example.backend.utils.RedisUtils;
import org.lionsoul.ip2region.xdb.Searcher;

import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import com.example.backend.common.AccessLimit;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.service.user.UserService;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class FangshuaInterceptor extends HandlerInterceptorAdapter {

    @Resource
    private UserService userService;
    @Resource
    private UserRoleRelationMapper userRoleRelationMapper;

    @Resource
    private UserApiAuthMapper userApiAuthMapper;

    @Resource
    private UserRoleAuthMapper userRoleAuthMapper;

    @Resource
    private UserApiMapper userApiMapper;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //判断请求是否属于方法的请求
        if(handler instanceof HandlerMethod){
            HandlerMethod hm = (HandlerMethod) handler;

            //获取方法中的注解,看是否有该注解
            AccessLimit accessLimit = hm.getMethodAnnotation(AccessLimit.class);
            if(accessLimit == null){
                return true;
            }
            int seconds = accessLimit.seconds();
            Long maxCount = accessLimit.maxCount();
            boolean login = accessLimit.needLogin();
            String url = request.getRequestURI();
            String key =  url + getClientIp(request).replace(":", ".");
//            String clientIp = getClientIp(request);
//            getLocationInfo(request.getRemoteAddr());
            User user = userService.getLoginUser(request);
            // 如果需要登录
            if (login) {
                if (user == null) {
                    throw new BusinessException(ErrorCode.PARAMS_ERROR, "你还没有登录呢！");
                } else if (!isPermissionAssigned(user, url)){
                    throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "谁给你的权利访问我的呀？？");
                }
            }

            if (user != null) {
                key += user.getUuid();
            }

            // 判断当前用户是否被封禁了
            if (user != null && RedisUtils.getStr(key + "_lock") != null && RedisUtils.getStr(key + "_lock").equals(String.valueOf(maxCount))) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你已经被封了！");
            } else if (user == null && RedisUtils.getStr(key + "_lock") != null && RedisUtils.getStr(key + "_lock").equals(String.valueOf(maxCount))) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你已经被封了！");
            }
            // 从redis中获取用户访问的次数
            String ip_visit_count = RedisUtils.getStr(key);
            Long expire = RedisUtils.getExpire(key);
            // 第一次访问
            if(ip_visit_count == null){
                RedisUtils.set(key, 1, seconds, TimeUnit.SECONDS);
            } else if(Long.parseLong(ip_visit_count) < maxCount){
                // 次数 + 1
                if (expire > 0) {
                    RedisUtils.set(key, Long.parseLong(ip_visit_count) + 1, expire, TimeUnit.SECONDS);
                }
            } else {
                // 超出访问次数，封禁2min
                if (user == null) {
                    RedisUtils.set(key + "_lock",maxCount, 120, TimeUnit.SECONDS);
                    RedisUtils.del(key);
                } else {
                    RedisUtils.set(key + "_lock", maxCount, 120, TimeUnit.SECONDS);
                    RedisUtils.del(key);
                }

                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你已经被封了！");
            }
        }
        return true;
    }

    /**
     * 检测当前接口是否符合权限分配情况
     *
     * @param user 用户信息
     * @param url 请求地址
     * @return 是否符合权限分配情况
     */
    private Boolean isPermissionAssigned(User user, String url) {
        Long uuid = user.getUuid();
        // 1.查找当前用户拥有的所有role角色
        QueryWrapper<UserRoleRelation> userRoleRelationQueryWrapper = new QueryWrapper<>();
        userRoleRelationQueryWrapper.eq("uuid",uuid);
        List<UserRoleRelation> userRoleRelations = userRoleRelationMapper.selectList(userRoleRelationQueryWrapper);

        // 2.查找对应的url所分属的role角色
        QueryWrapper<UserApi> userApiQueryWrapper = new QueryWrapper<>();
        QueryWrapper<UserApiAuth> userApiAuthQueryWrapper = new QueryWrapper<>();
        QueryWrapper<UserRoleAuth> userRoleAuthQueryWrapper = new QueryWrapper<>();

        userApiQueryWrapper.eq("path",url);
        List<UserApi> userApis = userApiMapper.selectList(userApiQueryWrapper);
        for (UserApi userApi : userApis) {
            userApiAuthQueryWrapper.in("api_id", userApi.getId());
        }
        List<UserApiAuth> userApiAuths = userApiAuthMapper.selectList(userApiAuthQueryWrapper);
        for (UserApiAuth userApiAuth : userApiAuths) {
            userRoleAuthQueryWrapper.in("auth_id", userApiAuth.getAuth_id());
        }
        List<UserRoleAuth> userRoleAuthList = userRoleAuthMapper.selectList(userRoleAuthQueryWrapper);

        // 提取所有 UserRoleAuth 的 roleId
        Set<Integer> authRoleIds = userRoleAuthList.stream()
                .map(UserRoleAuth::getRole_id)
                .collect(Collectors.toSet());

        // 检查 UserRoleRelation 是否有相同的 roleId

        return userRoleRelations.stream()
                .anyMatch(relation -> authRoleIds.contains(relation.getRole_id()));
    }
    /**
     * 获取客户端的真实IP地址
     *
     * @param request HTTP请求
     * @return 客户端的真实IP地址
     */
    private String getClientIp(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        // 如果通过了多级代理，X-Forwarded-For的值会是多个IP地址，第一个为真实IP地址
        if (ip != null && ip.contains(",")) {
            ip = ip.split(",")[0];
        }
        return ip;
    }
    /**
     * 根据IP搜索出IP所在地点
     *
     * @param ip 用户IP
     */
    void getLocationInfo(String ip) {
        String dbPath = "F:\\Project\\Backend\\backend\\ip2region.xdb";

        // 1、从 dbPath 加载整个 xdb 到内存。
        byte[] cBuff = new byte[0];
        try {
            cBuff = Searcher.loadContentFromFile(dbPath);
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "查找失败");
        }

        // 2、使用上述的 cBuff 创建一个完全基于内存的查询对象。
        Searcher searcher = null;
        try {
            searcher = Searcher.newWithBuffer(cBuff);
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "查找失败");
        }

        // 3、查询
        try {
            long sTime = System.nanoTime();
            String region = searcher.search(ip);
            long cost = TimeUnit.NANOSECONDS.toMicros((long) (System.nanoTime() - sTime));
            System.out.printf("{region: %s, ioCount: %d,  took: %d μs}\n", region, searcher.getIOCount(), cost);
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "查找失败");
        }
    }
}