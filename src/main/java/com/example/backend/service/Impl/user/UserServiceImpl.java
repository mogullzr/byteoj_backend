package com.example.backend.service.Impl.user;
import java.util.List;

import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.EmailConstant;
import com.example.backend.constant.UserConstant;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.picture.UserBackgroundPicture;
import com.example.backend.models.domain.picture.WebsiteBackgroundPictures;
import com.example.backend.models.domain.user.*;
import com.example.backend.models.request.AdminRegisterRequest;
import com.example.backend.models.request.user.*;
import com.example.backend.models.vo.UserRolesInfoVo;
import com.example.backend.models.vo.UserRolesVo;
import com.example.backend.models.vo.UserVo;
import com.example.backend.service.user.UserRoleAuthService;
import com.example.backend.service.user.UserRoleRelationService;
import com.example.backend.service.user.UserService;
import com.example.backend.utils.EmailSendUtil;
import com.example.backend.utils.OssUtils;
import com.example.backend.utils.RedisUtils;
import io.swagger.models.auth.In;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import com.example.backend.common.ErrorCode;
import org.springframework.util.CollectionUtils;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import static com.example.backend.constant.UserConstant.ADMIN_ROLE;
import static com.example.backend.constant.UserConstant.USER_LOGIN_STATE;


/**
 * @author Mogullzr
 * @description 针对表【user(用户表)】的数据库操作Service实现
 * @createDate 2024-07-12 11:09:40
 */
@Service
@Slf4j
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
        implements UserService {

    @Resource
    private UserMapper userMapper;

    @Resource
    private WebsiteBackgroundPicturesMapper websiteBackgroundPicturesMapper;

    @Resource
    private UserBackgroundPictureMapper userBackgroundPictureMapper;

    @Resource
    private UserAuthMapper userAuthMapper;

    @Resource
    private UserRoleMapper userRoleMapper;

    @Resource
    private UserRoleRelationMapper userRoleRelationMapper;

    @Resource
    private UserRoleAuthMapper userRoleAuthMapper;

    @Resource
    private UserService userService;

    @Resource
    private UserRoleRelationService userRoleRelationService;

    @Resource
    private UserRoleAuthService userRoleAuthService;

    @Resource
    private EmailSendUtil emailSendUtil;
    /**
     * 盐值，混淆密码,不懂的去了解MD5加密方式
     */
    private static final String SALT = "Mogullzr,搞我网站的我是你爹";

    @Resource
    private OssUtils ossUtils;

    @Value("${ROLE_MAX.UUID}")
    private Long BOSS_UUID;

    @Override
    public UserVo UserSearchByUuid(Long uuid) {
        if (uuid == null || uuid <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数存在问题");
        }

        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("uuid", uuid);
        User user = userMapper.selectOne(userQueryWrapper);

        return getUserSafetyUser(user);
    }

    private UserVo getUserSafetyUser(User user) {
        UserVo userVo = new UserVo();
        userVo.setUsername(user.getUsername());
        userVo.setAvatar(user.getAvatar());
        userVo.setSchool(user.getSchool());
        userVo.setRating(user.getRating());
        userVo.setProfile(user.getProfile());
        userVo.setReadings(user.getReadings());
        userVo.setTags(user.getTags());
        userVo.setUrl(user.getUrl());

        return userVo;
    }

    @Override
    public long UserRegister(String Account, String Email, String confirmNumber, String Password, String CheckPassword) {
        // 1.一般账户密码参数校验
        if (StringUtils.isAnyBlank(Account, Email, confirmNumber, Password, CheckPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        if (Account.length() < 4) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账户密码不能少于4位");
        }

        if (Password.length() < 8 || CheckPassword.length() < 8) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码不能少于8位");
        }

        if (!Password.equals(CheckPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "两次输入密码不一致");
        }

        // 2.判断用户名是否存在
        QueryWrapper<User>queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("account", Account);
        long count = this.count(queryWrapper);
        if (count > 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户已存在");
        }
        // 3.账户部分不允许出现特殊字符
        String validPattern = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
        Matcher matcher = Pattern.compile(validPattern).matcher(Account);
        if (matcher.find()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户名中不允许出现特殊字符");
        }

        // 4.进行QQ验证码的校验工作
        queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("email", Email);
        User user = userMapper.selectOne(queryWrapper);
        if (user != null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "what do you want to do???这个QQ号已经注册过了！");
        }
        // 从redis数据库中获取email_code验证码用来做判断
        String email_code = RedisUtils.getStr(EmailConstant.EMAIL_CODE.getValue() + Email);
        if (email_code == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "验证码已过期");
        }
        if(!Objects.equals(DigestUtils.md5DigestAsHex((SALT + confirmNumber).getBytes()), email_code)){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "验证码错误");
        }

        user = new User();
        user.setAccount(Account);
        user.setUsername(Account);
        user.setEmail(Email);
        user.setRating(1200);
        user.setRole(1);
        user.setCreate_time(new Date());
        user.setUpdate_time(new Date());
        user.setReadings(0);
        // 验证成功，清除本地redis邮箱验证码
        RedisUtils.del(EmailConstant.EMAIL_CODE.getValue() + EmailConstant.EMAIL_CODE_ERROR.getValue() + user.getUuid());

        // 5.密码使用MD5进行加密
        String encryptPassword = DigestUtils.md5DigestAsHex((SALT + Password).getBytes());

        // 6.插入数据
        user.setAccount(Account);
        user.setPassword(encryptPassword);
        user.setUsername(Account);
        user.setEmail(Email);

        // 7.将用户信息插入user表中
        queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", user.getUuid());
        boolean saveResult = this.save(user);

        if (!saveResult) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "注册失败");
        }
        return user.getUuid();
    }


    @Override
    public UserVo AdminLogin(String Account, String Password, String Token, HttpServletRequest httpServletRequest) {
        // 1.校验
        if (StringUtils.isAnyBlank(Account, Password,Token)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账户或密码不能为空");
        }

        if (Account.length() < 4) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账户不能少于4位");
        }

        if (Password.length() < 8) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码不能少于8位");
        }

        // 2.账户不允许出现特殊字符
        String encryptPassword = DigestUtils.md5DigestAsHex((SALT + Password).getBytes());

        //查询用户是否存在
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("account", Account);
        User user = userMapper.selectOne(queryWrapper);
        // 用户如果不存在
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "用户不存在");
        }

        String userPassword = user.getPassword();
        if (!userPassword.equals(encryptPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码错了呢还是TOKEN错了呢hh");
        }

        // 如果是管理员则需判断TOKEN是否准确
        if (user.getRole() == 2) {
            String correctToken = RedisUtils.getStr("ADMIN_TOKEN_" + user.getEmail());
            if (!correctToken.equals(DigestUtils.md5DigestAsHex((emailSendUtil.getSALT() + Token).getBytes()))) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR,"密码错了呢还是TOKEN错了呢hh");
            }
        } else {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你是管理员吗？就在这里瞎登");
        }
        // 3.我们将用户信息返回给前端的时候需要进行用户信息脱敏处理
        UserVo safetyUser = getSafetyUser(user);

        // 4.记录用户的登录状态,直接设置session
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute(USER_LOGIN_STATE, user);
        session.setMaxInactiveInterval(3600 * 24 * 2);
        safetyUser.setSessionId(httpServletRequest.getRequestedSessionId());
        return safetyUser;
    }

    @Override
    public UserVo UserLogin(String Account, String Password, HttpServletRequest httpServletRequest) {
        // 1.校验
        if (StringUtils.isAnyBlank(Account, Password)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账户或密码不能为空");
        }

        if (Account.length() < 4) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账户不能少于4位");
        }

        if (Password.length() < 8) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码不能少于8位");
        }

        // 2.账户不允许出现特殊字符
        String encryptPassword = DigestUtils.md5DigestAsHex((SALT + Password).getBytes());

        //查询用户是否存在
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("account", Account);
        User user = userMapper.selectOne(queryWrapper);
        // 用户如果不存在
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "用户不存在");
        }

        String userPassword = user.getPassword();
        if (!userPassword.equals(encryptPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码错误hh");
        }

        // 3.我们将用户信息返回给前端的时候需要进行用户信息脱敏处理
        UserVo safetyUser = getSafetyUser(user);

        // 4.记录用户的登录状态,直接设置session
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute(USER_LOGIN_STATE, user);
        session.setMaxInactiveInterval(3600 * 24 * 7);
        safetyUser.setSessionId(httpServletRequest.getRequestedSessionId());
        return safetyUser;
    }

    @Override
    public Boolean UserLoginByGithub(String code, String clientId, String clientSecret, HttpServletRequest httpServletRequest) {
        HashMap<String, Object> paramMap = new HashMap<>();
        paramMap.put("code", code);
        paramMap.put("client_id", clientId);
        paramMap.put("client_secret", clientSecret);
        HttpResponse httpResponse = HttpRequest.get("https://github.com/login/oauth/access_token")
                .header("Content-Type", "application/json")
                .body(JSONUtil.toJsonStr(paramMap))
                 .execute();

        String httpResponseBody = httpResponse.body();
        Pattern p = Pattern.compile("=(\\w+)&");
        Matcher m = p.matcher(httpResponseBody);
        String access_token = "";
        while (m.find()) {
            access_token = m.group(1);
            break;
        }

        paramMap = new HashMap<>();
        paramMap.put("access_token", access_token);
        httpResponse = HttpRequest.get("https://api.github.com/user")
                .header("Authorization", "token " + access_token)
                .execute();
        httpResponseBody = httpResponse.body();
        JSONObject jsonObject = JSONUtil.parseObj(httpResponseBody);
        long uuid = Integer.parseInt((String) jsonObject.get("id"));
        String account = (String) jsonObject.get("login");
        String username = (String) jsonObject.get("name");

        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("uuid", uuid);

        User user = userMapper.selectOne(userQueryWrapper);
        if (user == null) {
            user = new User();
            user.setUuid(uuid);
            user.setAccount(account);
            user.setUsername(username);
            return userMapper.insert(user) == 1;
        }
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute(USER_LOGIN_STATE, user);
        session.setMaxInactiveInterval(3600 * 24 * 7);

        return true;
    }

    @Override
    public boolean UserSetPassword(UserRegisterRequest userLoginEmailRequest) {
        String confirmNumber = userLoginEmailRequest.getConfirmNumber();
        String Email = userLoginEmailRequest.getEmail();
        String userPassword = userLoginEmailRequest.getPassword();
        String userCheckPassword = userLoginEmailRequest.getCheckPassword();


        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("email", Email);
        User user = userMapper.selectOne(queryWrapper);
        if (user == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "邮箱未注册");
        }
        if (StringUtils.isAnyBlank(userCheckPassword, userPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码不能为空");
        }
        if (userPassword.length() < 8 || userCheckPassword.length() < 8) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码不能少于8位");
        }

        if (!userPassword.equals(userCheckPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "两次输入密码不一致");
        }

        String email_code = RedisUtils.getStr(EmailConstant.EMAIL_CODE.getValue() + Email);
        if (email_code == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "验证码已经过期");
        }
        if (!email_code.equals(DigestUtils.md5DigestAsHex((SALT + confirmNumber).getBytes()))) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "验证码错误");
        }

        // 验证成功，清除本地redis邮箱验证码
        RedisUtils.del(EmailConstant.EMAIL_CODE.getValue() + Email);

        // MD5加密
        String encryptPassword = DigestUtils.md5DigestAsHex((SALT + userPassword).getBytes());

        user.setPassword(encryptPassword);
        int update = userMapper.update(user, queryWrapper);
        return update == 1;
    }

    @Override
    public User getLoginUser(HttpServletRequest httpServletRequest) {
        if (httpServletRequest == null) {
            return null;
        }

        Object userobj = httpServletRequest.getSession().getAttribute(USER_LOGIN_STATE);
//        if (userobj == null) {
//            throw new BusinessException(ErrorCode.NOT_LOGIN_ERROR, "未登录或者没有操作权限");
//        }
        return (User) userobj;
    }

    @Override
    public UserVo getSafetyUser(User user) {
        UserVo safetyUser = new UserVo();
        safetyUser.setUuid(user.getUuid());
        safetyUser.setAccount(user.getAccount());
        safetyUser.setUsername(user.getUsername());
        safetyUser.setAvatar(user.getAvatar());
        safetyUser.setTags(user.getTags());
        safetyUser.setHobby(user.getHobby());
        safetyUser.setEmail(user.getEmail());
        safetyUser.setPhone(user.getPhone());
        safetyUser.setGender(user.getGender());
        safetyUser.setSchool(user.getSchool());
        safetyUser.setProfile(user.getProfile());
        safetyUser.setRating(user.getRating());
        safetyUser.setRole(user.getRole());
        safetyUser.setBirth(user.getBirth());
        safetyUser.setCreate_time(user.getCreate_time());
        safetyUser.setUpdate_time(user.getUpdate_time());
        safetyUser.setReadings(user.getReadings());
        safetyUser.setUrl(user.getUrl());
        return safetyUser;
    }

    @Override
    public int UserLogout(HttpServletRequest httpServletRequest) {
        httpServletRequest.getSession().removeAttribute(USER_LOGIN_STATE);
        return 1;
    }

    @Override
    public boolean UserModify(@RequestBody UserModifyRequest userModifyRequest, HttpServletRequest httpServletRequest) {
        Long uuid = userModifyRequest.getUuid();
        String username = userModifyRequest.getUsername();
        String account = userModifyRequest.getAccount();
        String avatar = userModifyRequest.getAvatar();
        List<String> tags = userModifyRequest.getTag_list();
        String hobby = userModifyRequest.getHobby();
        String email =userModifyRequest.getEmail();
        String phone =userModifyRequest.getPhone();
        String gender = userModifyRequest.getGender();
        String profile = userModifyRequest.getProfile();
        String school = userModifyRequest.getSchool();
        Date birth = userModifyRequest.getBirth();
        String url = userModifyRequest.getUrl();
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);
        User pre_user = userMapper.selectOne(queryWrapper);

        if (pre_user == null) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "系统错误");
        }

        if (StringUtils.isAnyBlank(username, gender)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户名，性别不能为空");
        }

        if (username.length() < 4) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户名小于4位");
        }

        if (phone != null && phone.length() != 11) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "手机号必须为11位");
        }

        if (profile != null && profile.length() > 100) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "个人简介字数不可超过100字！！");
        }


        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();

        userQueryWrapper.eq("uuid", uuid);
        User user = userMapper.selectOne(userQueryWrapper);

        user.setUuid(uuid);
        user.setAccount(account);
        user.setUsername(username);
        user.setAvatar(avatar);
        user.setTags(Objects.equals(String.valueOf(tags), "null") ? "" : String.valueOf(tags));
        user.setHobby(hobby);
        user.setEmail(email);
        user.setPhone(phone);
        user.setGender(gender);
        user.setSchool(school);
        user.setProfile(profile);
        user.setRating(user.getRating());
        user.setRole(user.getRole());
        user.setBirth(birth);
        user.setCreate_time(user.getCreate_time());
        user.setUpdate_time(new Date());
        user.setReadings(user.getReadings());
        user.setUrl(url);

        userMapper.update(user, userQueryWrapper);

        return true;
    }

    @Override
    public String UserUploadPicture(MultipartFile file, Integer status,
                                    HttpServletRequest httpServletRequest) throws IOException {
        // 获取当前登录用户信息
        Long uuid = -1L;
        User loginUser = userService.getLoginUser(httpServletRequest);
        if (loginUser == null) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "你还没有登录呢！！！");
        } else {
            uuid = loginUser.getUuid();
        }

        // 返回上传oss的url
        String uploadOneFile = ossUtils.uploadOneFile(file);

        // 获取当前用户
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);

        User user = userMapper.selectOne(queryWrapper);

        // 1.当status为0的时候表示给用户传送头像
        if (status == 0) {
            String avatar = user.getAvatar();
            if (avatar != null && !avatar.isEmpty()) {
                ossUtils.deleteAvatar(user.getAvatar());
            }
            user.setAvatar(uploadOneFile);
            userMapper.update(user, queryWrapper);
        }
        // 2.status为1的时候表示传送背景图片，注意下这里之后一定一定需要进行限制防止被冲烂了
        else if (status == 1) {
            WebsiteBackgroundPictures websiteBackgroundPictures = new WebsiteBackgroundPictures();
            websiteBackgroundPictures.setUuid(user.getUuid());
            websiteBackgroundPictures.setPicture_address(uploadOneFile);
            websiteBackgroundPictures.setCreate_time(new Date());
            websiteBackgroundPicturesMapper.insert(websiteBackgroundPictures);

            // 将图片插入到关系表中或者是修改操作
            QueryWrapper<UserBackgroundPicture> userBackgroundPictureQueryWrapper = new QueryWrapper<>();
            userBackgroundPictureQueryWrapper.eq("uuid", uuid);

            UserBackgroundPicture userBackgroundPicture = userBackgroundPictureMapper.selectOne(userBackgroundPictureQueryWrapper);
            if (userBackgroundPicture != null) {
                userBackgroundPicture.setPicture_address(uploadOneFile);
                userBackgroundPictureMapper.update(userBackgroundPicture, userBackgroundPictureQueryWrapper);
            } else {
                userBackgroundPicture = new UserBackgroundPicture();
                userBackgroundPicture.setUuid(uuid);
                userBackgroundPicture.setPicture_address(uploadOneFile);
            }

        }

        // 3.status为2的时候表示文章传送图片
        return uploadOneFile;
    }

    @Override
    public String UserGetPictureByUser(Long uuid) {
        QueryWrapper<UserBackgroundPicture> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);

        UserBackgroundPicture userBackgroundPicture = userBackgroundPictureMapper.selectOne(queryWrapper);
        if (userBackgroundPicture == null) {
            return "";
        } else {
            return userBackgroundPicture.getPicture_address();
        }
    }

    @Override
    public boolean UserSetPictureBackground(String picture_address, Long uuid) {
        QueryWrapper<UserBackgroundPicture> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);

        UserBackgroundPicture userBackgroundPicture = userBackgroundPictureMapper.selectOne(queryWrapper);
        if (userBackgroundPicture == null) {
            userBackgroundPicture = new UserBackgroundPicture();
            userBackgroundPicture.setUuid(uuid);
            userBackgroundPicture.setPicture_address(picture_address);
            userBackgroundPictureMapper.insert(userBackgroundPicture);
        } else {
            userBackgroundPicture.setPicture_address(picture_address);
            userBackgroundPictureMapper.update(userBackgroundPicture, queryWrapper);
        }

        return true;
    }

    @Override
    public boolean isAdmin(HttpServletRequest httpServletRequest) {
        Object userObj = httpServletRequest.getSession().getAttribute(USER_LOGIN_STATE);
        User user = (User) userObj;
        return user != null && user.getRole().equals(ADMIN_ROLE);
    }

    @Override
    public boolean isAdmin(User loginUser) {
        return loginUser != null && loginUser.getRole().equals(ADMIN_ROLE);
    }

    @Override
    public List<User> adminGetUserList(Integer pageNum) {
        Page<User> page = new Page<>(pageNum, 15);
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.ne("role", 2);
        List<User> userList = userMapper.selectPage(page, queryWrapper).getRecords();
        List<User> userVoList = new ArrayList<>();

        for (User user : userList) {
            User simple_user = new User();
            simple_user.setUuid(user.getUuid());
            simple_user.setAccount(user.getAccount());
            simple_user.setUsername(user.getUsername());
            simple_user.setCreate_time(user.getCreate_time());
            simple_user.setTags(user.getTags());
            simple_user.setGender(user.getGender());
            simple_user.setPhone(user.getPhone());
            simple_user.setRating(user.getRating());
            simple_user.setRole(user.getRole());
            simple_user.setEmail(user.getEmail());
            userVoList.add(simple_user);
        }
        return userVoList;
    }

    @Override
    public boolean adminBanUserList(@RequestBody List<Long> user_list) {
        user_list.forEach((uuid)->{
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("uuid", uuid);
            User user = userMapper.selectOne(queryWrapper);
            if (user.getRole() != UserConstant.BAN_ROLE) {
                user.setRole(UserConstant.BAN_ROLE);
                userMapper.update(user, queryWrapper);
            }
        });

        return true;
    }

    @Override
    public boolean adminCancelBanUser(Long uuid) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);
        User user = userMapper.selectOne(queryWrapper);
        user.setRole(1);

        int update = userMapper.update(user, queryWrapper);
        return update == 1;
    }

    @Override
    public boolean bossAdminAuthorize(List<String> authorNameList, Long uuid) {
        // 1.查询当前这些ID是否存在，不存在则直接抛出异常
        QueryWrapper<UserRole> userRoleQueryWrapper = new QueryWrapper<>();
        List<UserRole> userRoles = userRoleMapper.selectList(userRoleQueryWrapper);
        if (userRoles == null || userRoles.size() == authorNameList.size() || userRoles.isEmpty()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "你在干嘛呢，哎哟，参数有问题！！！");
        }

        // 2.1.设置用户与角色表关系，先删除
        QueryWrapper<UserRoleRelation> userRoleRelationQueryWrapper = new QueryWrapper<>();
        QueryWrapper<UserRole> roleQueryWrapper = new QueryWrapper<>();

        List<UserRoleRelation> userRoleRelations = new ArrayList<>();
        userRoleRelationQueryWrapper.eq("uuid",uuid);

        userRoleRelationMapper.delete(userRoleRelationQueryWrapper);

        authorNameList.forEach((authorName)-> {
            roleQueryWrapper.in("description", authorName);
        });

        List<UserRole> userRoleList = userRoleMapper.selectList(roleQueryWrapper);
        // 2.2. 转换为Map便于查找
        Map<String, List<UserRole>> userRoleMap = userRoleList.stream()
                .collect(Collectors.groupingBy(UserRole::getDescription));

        authorNameList.forEach((authorName)->{
            UserRole userRole = userRoleMap.get(authorName).get(0);
            UserRoleRelation userRoleRelation = new UserRoleRelation();

            userRoleRelation.setUuid(uuid);
            userRoleRelation.setRole_id(userRole.getId());

            userRoleRelation.setCreate_time(new Date());
            userRoleRelation.setUpdate_time(new Date());
            userRoleRelations.add(userRoleRelation);
        });

        return userRoleRelationService.saveBatch(userRoleRelations);
    }

    @Override
    public List<UserVo> listUserAuthVoByPage(UserAuthSearchRequest userAuthSearchRequest) {
        // 1. 获取用户基本信息
        UserSearchRequest userSearchRequest = new UserSearchRequest();
        userSearchRequest.setPageNum(userAuthSearchRequest.getPageNum());
        userSearchRequest.setPageSize(userAuthSearchRequest.getPageSize());
        List<UserVo> userVoList = listUserVoByPage(userSearchRequest);

        // 2. 提取所有UUID
        List<Long> uuidList = userVoList.stream()
                .map(UserVo::getUuid)
                .collect(Collectors.toList());

        // 3. 批量查询角色关系（避免使用or()）
        if (!uuidList.isEmpty()) {
            QueryWrapper<UserRoleRelation> wrapper = new QueryWrapper<>();
            wrapper.in("uuid", uuidList); // 使用IN查询更高效
            List<UserRoleRelation> userRoleRelations = userRoleRelationMapper.selectList(wrapper);

            // 4. 转换为Map便于查找
            Map<Long, List<UserRoleRelation>> roleRelationMap = userRoleRelations.stream()
                    .collect(Collectors.groupingBy(UserRoleRelation::getUuid));

            // 5. 合并数据
            userVoList.forEach(userVo -> {
                List<UserRoleRelation> relations = roleRelationMap.get(userVo.getUuid());
                if (relations != null) {
                    // 这里可以根据需要封装角色信息
                    List<Integer> roleIds = relations.stream()
                            .map(UserRoleRelation::getRole_id)
                            .collect(Collectors.toList());
                    userVo.setRole_id_list(roleIds); // 假设UserVo有setRoleIds方法
                }
            });
        }
        return userVoList;
    }

    @Override
    public boolean bossAdminSetRoles(UserRoleCreateRequest userRoleCreateRequest) {
        // 0.查看请求信息是否为空
        String roleName = userRoleCreateRequest.getRole_name();
        List<String> authNameList = userRoleCreateRequest.getAuth_name_list();
        // 1.查询对应权限名称是否存在，存在则抛出异常
        QueryWrapper<UserRole> userRoleAuthQueryWrapper = new QueryWrapper<>();
        userRoleAuthQueryWrapper.eq("role", roleName);
        Long count = userRoleMapper.selectCount(userRoleAuthQueryWrapper);
        if (count != 0L){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "角色不可重复创建");
        }

        // 2.创建角色信息
        UserRole userRole = new UserRole();
        userRole.setRole(roleName);
        userRole.setCreate_time(new Date());
        userRole.setUpdate_time(new Date());
        userRole.setDescription(roleName);

        userRoleMapper.insert(userRole);

        // 3.创建角色与权限对应关系
        QueryWrapper<UserAuth> userAuthQueryWrapper = new QueryWrapper<>();
        authNameList.forEach((authName)->{
            userAuthQueryWrapper.in("name",authName);
        });

        List<UserAuth> userAuthList = userAuthMapper.selectList(userAuthQueryWrapper);
        Map<String, List<UserAuth>> userAuthRelations = userAuthList.stream()
                .collect(Collectors.groupingBy(UserAuth::getName));

        // 4.设置新角色和权限之间映射关系
        List<UserRoleAuth> userRoleAuthList = new ArrayList<>();

        authNameList.forEach((authName)->{
            UserRoleAuth userRoleAuth = new UserRoleAuth();
            userRoleAuth.setRole_id(userRole.getId());
            userRoleAuth.setAuth_id(userAuthRelations.get(authName).get(0).getId());
            userRoleAuth.setCreate_time(new Date());
            userRoleAuth.setUpdate_time(new Date());

            userRoleAuthList.add(userRoleAuth);
        });

        return userRoleAuthService.saveBatch(userRoleAuthList);
    }
    @Override
    public UserRolesInfoVo bossAdminGetRoles(UserRolesSearchRequest userRolesSearchRequest) {
        String keyword = userRolesSearchRequest.getKeyword();
        Integer pageSize = userRolesSearchRequest.getPageSize();
        Integer pageNum = userRolesSearchRequest.getPageNum();

        // 参数校验
        if (pageNum == null || pageSize == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "分页参数不能为空");
        }

        // 1. 分页查询角色信息
        Page<UserRole> page = new Page<>(pageNum, pageSize);
        QueryWrapper<UserRole> queryWrapper = new QueryWrapper<>();

        // 添加关键词搜索条件
        if (StringUtils.isNotBlank(keyword)) {
            queryWrapper.like("role", keyword)
                    .or()
                    .like("description", keyword);
        }

        // 执行分页查询
        Page<UserRole> rolePage = userRoleMapper.selectPage(page, queryWrapper);
        List<UserRole> roles = rolePage.getRecords();

        // 如果查询结果为空，返回空对象而不是null
        if (CollectionUtils.isEmpty(roles)) {
            UserRolesInfoVo emptyResult = new UserRolesInfoVo();
            emptyResult.setUserRolesVo(Collections.emptyList());
            emptyResult.setRolesList(Collections.emptyList());
            return emptyResult;
        }

        // 2. 获取角色ID列表
        List<Integer> roleIds = roles.stream()
                .map(UserRole::getId)
                .collect(Collectors.toList());

        // 3. 查询这些角色的权限关联关系
        QueryWrapper<UserRoleAuth> roleAuthQuery = new QueryWrapper<>();
        roleAuthQuery.in("role_id", roleIds);
        List<UserRoleAuth> roleAuths = userRoleAuthMapper.selectList(roleAuthQuery);

        // 4. 获取所有权限ID
        List<Integer> authIds = Collections.emptyList();
        if (!CollectionUtils.isEmpty(roleAuths)) {
            authIds = roleAuths.stream()
                    .map(UserRoleAuth::getAuth_id)
                    .distinct()
                    .collect(Collectors.toList());
        }

        // 5. 查询权限详细信息
        Map<Integer, String> authIdToNameMap;
        if (!CollectionUtils.isEmpty(authIds)) {
            QueryWrapper<UserAuth> authQuery = new QueryWrapper<>();
            authQuery.in("id", authIds);
            List<UserAuth> auths = userAuthMapper.selectList(authQuery);

            authIdToNameMap = auths.stream()
                    .collect(Collectors.toMap(
                            UserAuth::getId,
                            UserAuth::getName
                    ));
        } else {
            authIdToNameMap = Collections.emptyMap();
        }

        // 6. 构建角色ID到权限名称列表的映射
        Map<Integer, List<String>> roleAuthMap = new HashMap<>();
        if (!CollectionUtils.isEmpty(roleAuths)) {
            roleAuths.forEach(relation -> {
                Integer roleId = relation.getRole_id();
                String authName = authIdToNameMap.get(relation.getAuth_id());
                if (authName != null) {
                    roleAuthMap.computeIfAbsent(roleId, k -> new ArrayList<>()).add(authName);
                }
            });
        }

        // 7. 构建UserRolesVo列表
        List<UserRolesVo> userRolesVos = roles.stream()
                .map(role -> {
                    UserRolesVo vo = new UserRolesVo();
                    vo.setRole_name(role.getDescription()); // 使用角色名
                    vo.setAuth_list(roleAuthMap.getOrDefault(role.getId(), Collections.emptyList()));
                    return vo;
                })
                .collect(Collectors.toList());

        // 8. 构建角色名称列表
        List<String> rolesList = roles.stream()
                .map(UserRole::getDescription)
                .collect(Collectors.toList());

        // 9. 构建最终返回对象
        UserRolesInfoVo result = new UserRolesInfoVo();
        result.setUserRolesVo(userRolesVos); // 设置整个列表
        result.setRolesList(rolesList);

        return result;
    }
   public boolean bossAdminAddAdmin(AdminRegisterRequest adminRegisterRequest) {
        String Account = adminRegisterRequest.getAccount();
        String Email = adminRegisterRequest.getEmail();
        String Password = adminRegisterRequest.getPassword();
        String CheckPassword = adminRegisterRequest.getCheckPassword();
        String Phone = adminRegisterRequest.getPhone();
        String School = adminRegisterRequest.getSchool();

        // 1.一般账户密码参数校验
        if (StringUtils.isAnyBlank(Account, Email, Password, CheckPassword, Phone, School)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "信息不能为空");
        }

        if (Account.length() < 4) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账户密码不能少于4位");
        }

        if (Password.length() < 8 || CheckPassword.length() < 8) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码不能少于8位");
        }

        if (!Password.equals(CheckPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "两次输入密码不一致");
        }

        // 2.判断用户名是否存在
        QueryWrapper<User>queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("account", Account);
        long count = this.count(queryWrapper);
        if (count > 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户已存在");
        }
        // 3.账户部分不允许出现特殊字符
        String validPattern = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
        Matcher matcher = Pattern.compile(validPattern).matcher(Account);
        if (matcher.find()) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户名中不允许出现特殊字符");
        }

        // 6.进行QQ邮箱格式正确性校验
        Pattern patternQQ = Pattern.compile("^[a-zA-z0-9_\\-]+@qq\\.com$");
        Matcher matcherQQ = patternQQ.matcher(Email);
        if (!matcherQQ.find()){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "QQ邮箱格式不正确");
        }
        // 4.进行QQ信息校验工作
        queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("email", Email);
        User user = userMapper.selectOne(queryWrapper);
        if (user != null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "what do you want to do???这个QQ号已经注册过了！");
        }

        // 5.进行手机号格式正确性校验
        Pattern patternPhone = Pattern.compile("^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9]))\\d{8}$+");
        Matcher matcherPhone = patternPhone.matcher(Phone);
        if (!matcherPhone.find()){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "手机号格式不正确");
        }

        // 7.插入管理员信息
        Password = DigestUtils.md5DigestAsHex((SALT + adminRegisterRequest.getPassword()).getBytes());
        user = new User();
        user.setAccount(Account);
        user.setUsername(Account);
        user.setPassword(Password);
        user.setEmail(Email);
        user.setPhone(Phone);
        user.setSchool(School);
        user.setCreate_time(new Date());
        user.setRole(2);

        int insert = userMapper.insert(user);


        return insert == 1 && emailSendUtil.sendTokenToAdminEmail(Email);
    }

    @Override
    public boolean bossAdminCancelAdmin(Long uuid) {
        QueryWrapper<User> queryWrapper = new QueryWrapper();
        queryWrapper.eq("uuid", uuid);

        User user = userMapper.selectOne(queryWrapper);
        if (null == user) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户不存在，老弟在想啥呢");
        }

        user.setRole(1);
        int update = userMapper.update(user, queryWrapper);
        return update == 1;
    }

    @Override
    public List<User> bossAdminGetAdminList() {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("role", 2);
        queryWrapper.ne("uuid", BOSS_UUID);

        List<User> userList = userMapper.selectList(queryWrapper);
        List<User> userVoList = new ArrayList<>();

        userList.forEach((user)->{
            User newUser = new User();
            newUser.setAccount(user.getAccount());
            newUser.setEmail(user.getEmail());
            newUser.setPhone(user.getPhone());
            newUser.setRating(user.getRating());
            newUser.setSchool(user.getSchool());
            newUser.setUuid(user.getUuid());
            newUser.setCreate_time(user.getCreate_time());
            userVoList.add(newUser);
        });

        return userVoList;
    }

    @Override
    public boolean bossAdminSetAdmin(Long uuid) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uuid", uuid);

        User user = userMapper.selectOne(queryWrapper);
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "用户不存在");
        } else if (user.getRole() == 2) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "不要重复设置管理员");
        }

        user.setRole(2);
        int update = userMapper.update(user, queryWrapper);
        return update == 1 && emailSendUtil.sendTokenToAdminEmail(user.getEmail());

    }

    @Override
    public List<UserVo> listUserVoByPage(UserSearchRequest userSearchRequest) {
        String keyword = userSearchRequest.getKeyword();
        Integer pageNum = userSearchRequest.getPageNum();
        Integer pageSize = userSearchRequest.getPageSize();

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();

        if (keyword != null && !keyword.isEmpty()) {
            queryWrapper.like("username", keyword);
        }

        Page<User> userPage = new Page<>(pageNum, pageSize);
        Page<User> page = userMapper.selectPage(userPage, queryWrapper);
        List<User> userList = page.getRecords();
        List<UserVo> userVoList = new ArrayList<>();

        for (User user : userList) {
            userVoList.add(getSafetyUser(user));
        }

        if (!userVoList.isEmpty()) {
            UserVo userVo = userVoList.get(0);
            userVo.setPages((int) page.getPages());
            userVoList.set(0, userVo);
        }
        return userVoList;
    }
}




