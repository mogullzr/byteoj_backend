package com.example.backend.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.backend.common.*;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.UserBackgroundPictureMapper;
import com.example.backend.mapper.UserMapper;
import com.example.backend.mapper.WebsiteBackgroundPicturesMapper;
import com.example.backend.models.domain.picture.WebsiteBackgroundPictures;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.*;
import com.example.backend.models.request.user.*;
import com.example.backend.models.vo.UserVo;
import com.example.backend.service.user.UserService;
import com.example.backend.utils.EmailSendUtil;
import com.example.backend.utils.OssUtils;
import com.example.backend.utils.RSAUtil;
import com.example.backend.utils.RedisUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.time.Duration;
import java.time.Instant;
import java.util.*;

import static com.example.backend.constant.UserConstant.USER_LOGIN_STATE;
import static com.example.backend.utils.EmailSendUtil.SALT;


@RestController
@RequestMapping("/user")
@Slf4j
@Controller
public class UserController {
    @Resource
    private UserMapper userMapper;

    @Resource
    private UserBackgroundPictureMapper userBackgroundPictureMapper;

    @Resource
    private UserService userService;

    @Resource
    private WebsiteBackgroundPicturesMapper websiteBackgroundPicturesMapper;

    @Resource
    private OssUtils ossUtils;

    @Autowired
    private EmailSendUtil emailSendUtils;

    @Autowired
    private RedisTemplate redisTemplate;

    @Value("${ROLE_MAX.UUID}")
    private Long BOSS_UUID;

    // TODO 注意一下下面这一部分注释了
//
//    @PostMapping("/register")
//    private BaseResponse<Long> userRegister(@RequestBody UserRegisterRequest userRegisterRequest) {
//        if (userRegisterRequest == null){
//            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
//        }
//        String Account = userRegisterRequest.getAccount();
//        String Email = userRegisterRequest.getEmail();
//        String confirmNumber = userRegisterRequest.getConfirmNumber();
//        String Password = userRegisterRequest.getPassword();
//        String checkPassword = userRegisterRequest.getCheckPassword();
//        Long result = userService.UserRegister(Account, Email, confirmNumber, Password, checkPassword);
//        return ResultUtils.success(result);
//    }
    @PostMapping("/register")
    private BaseResponse<Long> userRegister(@RequestBody UserRegisterRequest userRegisterRequest) {
        if (userRegisterRequest == null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        String Account = userRegisterRequest.getAccount();
        String Password = userRegisterRequest.getPassword();
        String checkPassword = userRegisterRequest.getCheckPassword();

        Long result = userService.UserRegister(Account, Password, checkPassword);
        return ResultUtils.success(result);
    }
    @AccessLimit(seconds=5, maxCount=20, needLogin=false)
    @PostMapping("/admin/login")
    private BaseResponse<UserVo> adminLogin(@RequestBody UserLoginRequest userLoginRequest, HttpServletRequest httpServletRequest) {
        if (userLoginRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        String Account = userLoginRequest.getAccount();
        String Password = userLoginRequest.getPassword();
        String Token = userLoginRequest.getToken();


        try {
            Account = RSAUtil.decryptWithPrivate(Account);
            Password = RSAUtil.decryptWithPrivate(Password);
            Token = RSAUtil.decryptWithPrivate(Token);

            assert Password != null;
            // 获取当前时间的 Instant 对象
            Instant now = Instant.now();

            // 创建时间戳对应的 Instant 对象
            assert Account != null;
            Instant timestampInstant_1 = Instant.ofEpochMilli(Long.parseLong(Account.split(":")[1]));
            Instant timestampInstant_2 = Instant.ofEpochMilli(Long.parseLong(Password.split(":")[1]));
            assert Token != null;
            Instant timestampInstant_3 = Instant.ofEpochMilli(Long.parseLong(Token.split(":")[1]));

            // 计算时间差
            Duration duration_1 = Duration.between(timestampInstant_1, now);
            Duration duration_2 = Duration.between(timestampInstant_2, now);
            Duration duration_3 = Duration.between(timestampInstant_3, now);

            // 获取相差的秒数
            if (Math.abs(duration_1.getSeconds()) >= 60 || Math.abs(duration_2.getSeconds()) >= 60 || Math.abs(duration_3.getSeconds()) >= 60) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "小伙子你还挺狂，敢抓我包？？？？？");
            }

            Password = Password.split(":")[0];
            // 这里就是解密后的信息了
            Account = Account.split(":")[0];
            Password = Password.split(":")[0];
            Token = Token.split(":")[0];
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "小伙子你还挺狂，敢抓我包？？？？");
        }

        UserVo result = userService.AdminLogin(Account, Password, Token, httpServletRequest);
        return ResultUtils.success(result);
    }
    @PostMapping("/login")
    private BaseResponse<UserVo> userLogin(@RequestBody UserLoginRequest userLoginRequest, HttpServletRequest httpServletRequest) {
        if (userLoginRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        String Account = userLoginRequest.getAccount();
        String Password = userLoginRequest.getPassword();

        try {
            Account = RSAUtil.decryptWithPrivate(Account);
            Password = RSAUtil.decryptWithPrivate(Password);

            assert Password != null;
            // 获取当前时间的 Instant 对象
            Instant now = Instant.now();

            // 创建时间戳对应的 Instant 对象
            assert Account != null;
            Instant timestampInstant_1 = Instant.ofEpochMilli(Long.parseLong(Account.split(":")[1]));
            Instant timestampInstant_2 = Instant.ofEpochMilli(Long.parseLong(Password.split(":")[1]));

            // 计算时间差
            Duration duration_1 = Duration.between(timestampInstant_1, now);
            Duration duration_2 = Duration.between(timestampInstant_2, now);

            // 获取相差的秒数
            if (Math.abs(duration_1.getSeconds()) >= 360 || Math.abs(duration_2.getSeconds()) >= 360) {
                throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "小伙子你还挺狂，敢抓我包？？？？？");
            }

            Password = Password.split(":")[0];
            // 这里就是解密后的信息了
            Account = Account.split(":")[0];
            Password = Password.split(":")[0];
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "小伙子你还挺狂，敢抓我包？？？？");
        }

        UserVo result = userService.UserLogin(Account, Password, httpServletRequest);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=60, maxCount=10, needLogin=false)
    @PostMapping("/email/send")
    private BaseResponse<Boolean> userEmailSend(String receiveEmail, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null || Objects.equals(receiveEmail, "")) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        boolean result = emailSendUtils.sendVerificationEmail(receiveEmail);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=60, maxCount=20, needLogin=false)
    @PostMapping("/login/email")
    private BaseResponse<Boolean> userLoginByEmail(@RequestBody UserLoginEmailRequest userLoginEmailRequest, HttpServletRequest httpServletRequest){
        // 去用户表中寻找是否有这样邮箱的用户，
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("email", userLoginEmailRequest.getEmail());
        User user = userMapper.selectOne(queryWrapper);
        if (user == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "不对，有问题！");
        }
        // 从redis数据库中获取email_code验证码用来做判断
        String email_code = RedisUtils.getStr(EmailConstant.EMAIL_CODE.getValue() + userLoginEmailRequest.getEmail());
        if (email_code == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "验证码已过期");
        }
        if(!DigestUtils.md5DigestAsHex((SALT + userLoginEmailRequest.getCode()).getBytes()).equals(email_code)){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "验证码错误");
        }
        // 登陆成功 清楚本地redis邮箱验证码
        RedisUtils.del(EmailConstant.EMAIL_CODE.getValue() + EmailConstant.EMAIL_CODE_ERROR.getValue() + user.getUuid());
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute(USER_LOGIN_STATE, user);
        session.setMaxInactiveInterval(3600 * 24 * 7);
        return ResultUtils.success(true);
    }


    @AccessLimit(seconds=60, maxCount=10, needLogin=false)
    @PostMapping("/getBack")
    private BaseResponse<Boolean> userSetPassword(@RequestBody UserRegisterRequest userRegisterRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }

        boolean result = userService.UserSetPassword(userRegisterRequest);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=40, needLogin=false)
    @GetMapping("/current")
    private BaseResponse<UserVo> getCurrentUser(HttpServletRequest httpServletRequest) {
        Object userobj = httpServletRequest.getSession().getAttribute(USER_LOGIN_STATE);
        User currentUser = (User) userobj;

        if (currentUser == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "没有该用户的登录态");
        }
        long userId = currentUser.getUuid();
        User user = userService.getById(userId);
        UserVo safetyUser = userService.getSafetyUser(user);

        return ResultUtils.success(safetyUser);
    }

    @PostMapping("/logout")
    private BaseResponse<Integer> userLogout(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        Integer result = userService.UserLogout(httpServletRequest);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=true)
    @PostMapping("/modify")
    private BaseResponse<Boolean> userModify(@RequestBody UserModifyRequest user, HttpServletRequest httpServletRequest) {
        if (user == null || httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        if (!Objects.equals(loginUser.getUuid(), user.getUuid())) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "请你不要乱爬！！！！！小心封了你哟");
        }
        user.setUuid(loginUser.getUuid());

        boolean result = userService.UserModify(user, httpServletRequest);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=10, needLogin=false)
    @PostMapping("/upload")
    private BaseResponse<String> userUploadPicture(@RequestBody String base64Image, Integer status, HttpServletRequest httpServletRequest) throws IOException {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        String result = userService.UserUploadPicture(base64Image, status, httpServletRequest);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=40, needLogin=true)
    @GetMapping("/picture/get")
    private BaseResponse<List<WebsiteBackgroundPictures>> userGetPicture(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();

        List<User> userList = userMapper.selectList(userQueryWrapper);
        List<WebsiteBackgroundPictures> result = new ArrayList<>();
        userList.forEach((user)->{
            QueryWrapper<WebsiteBackgroundPictures> websiteBackgroundPicturesQueryWrapper = new QueryWrapper<>();
            websiteBackgroundPicturesQueryWrapper.eq("uuid", user.getUuid());
            result.addAll(websiteBackgroundPicturesMapper.selectList(websiteBackgroundPicturesQueryWrapper));
        });

        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=5, maxCount=30, needLogin=true)
    @GetMapping("/picture/user/get/")
    private BaseResponse<String> userGetPictureByUser(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        String result = userService.UserGetPictureByUser(uuid);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds=60, maxCount=20, needLogin=true)
    @PostMapping("/picture/user/set")
    private BaseResponse<Boolean> userSetPictureBackground(String picture_address, HttpServletRequest httpServletRequest){
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = userService.UserSetPictureBackground(picture_address, uuid);
        return ResultUtils.success(result);

    }

    @AccessLimit(seconds=60, maxCount=20, needLogin=true)
    @PostMapping("/picture/user/delete")
    private BaseResponse<Boolean> userDeleteBackground(Long id, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        int delete = 0;

        QueryWrapper<WebsiteBackgroundPictures> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", id);
        WebsiteBackgroundPictures websiteBackgroundPictures = websiteBackgroundPicturesMapper.selectOne(queryWrapper);

        if (websiteBackgroundPictures == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "不存在这样的图片");
        } else if (isAdmin) {
            delete = websiteBackgroundPicturesMapper.delete(queryWrapper);
        } else if (uuid == websiteBackgroundPictures.getUuid()) {
            delete = websiteBackgroundPicturesMapper.delete(queryWrapper);
        }
        boolean success = ossUtils.deleteAvatar(websiteBackgroundPictures.getPicture_address());
        return ResultUtils.success(delete == 1 && success);
    }

    @PostMapping("/admin/get")
    private BaseResponse<List<User>> adminGetUserList(Integer pageNum, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "非管理员无权限操作");
        }

        List<User> result = userService.adminGetUserList(pageNum);
        return ResultUtils.success(result);
    }

    @PostMapping("/admin/getPage")
    private BaseResponse<Long> adminGetUserPages(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"信息不能为空");
        }

        Page<User> page = new Page<>(1,15);
        return ResultUtils.success(userMapper.selectPage(page, null).getPages());
    }
    @PostMapping("/admin/ban")
    private BaseResponse<Boolean> adminBanUserList(@RequestBody List<Long> user_list, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "没有管理员权限");
        }
        boolean result = userService.adminBanUserList(user_list);
        return ResultUtils.success(result);
    }

    @PostMapping("/admin/cancel")
    private BaseResponse<Boolean> adminCancelBanUser(Long uuid, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "没有管理员权限");
        }
        boolean result = userService.adminCancelBanUser(uuid);
        return ResultUtils.success(result);
    }

    @PostMapping("/BOSS/get")
    private BaseResponse<List<User>> bossAdminGetAdminList(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin || !Objects.equals(loginUser.getUuid(), BOSS_UUID)) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "该功能需要BOSS管理员的权限，你的级别还不够操作");
        }

        List<User> result = userService.bossAdminGetAdminList();
        return ResultUtils.success(result);
    }
    @PostMapping("/BOSS/add")
    private BaseResponse<Boolean> bossAdminAddAdmin(@RequestBody AdminRegisterRequest adminRegisterRequest, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin || !Objects.equals(loginUser.getUuid(), BOSS_UUID)) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "该功能需要BOSS管理员的权限，你的级别还不够操作");
        }

        boolean result = userService.bossAdminAddAdmin(adminRegisterRequest);
        return ResultUtils.success(result);
    }
    @PostMapping("/BOSS/set")
    private BaseResponse<Boolean> bossAdminSetAdmin(Long uuid, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin || !Objects.equals(loginUser.getUuid(), BOSS_UUID)) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "该功能需要BOSS管理员的权限，你的级别还不够操作");
        }

        boolean result = userService.bossAdminSetAdmin(uuid);
        return ResultUtils.success(result);
    }
    @PostMapping("/BOSS/cancel")
    private BaseResponse<Boolean> bossAdminCancelAdmin(Long uuid, HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        User loginUser = userService.getLoginUser(httpServletRequest);
        boolean isAdmin = userService.isAdmin(httpServletRequest);
        if (!isAdmin || !Objects.equals(loginUser.getUuid(), BOSS_UUID)) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "该功能需要BOSS管理员的权限，你的级别还不够操作");
        }

        boolean result = userService.bossAdminCancelAdmin(uuid);
        return ResultUtils.success(result);
    }

    @PostMapping("/search")
    @AccessLimit(seconds = 1,maxCount = 10, needLogin = false)
    private BaseResponse<List<UserVo>> ListUserVoByPage(@RequestBody UserSearchRequest userSearchRequest){
        List<UserVo> result = userService.listUserVoByPage(userSearchRequest);
        return ResultUtils.success(result);
    }
}
