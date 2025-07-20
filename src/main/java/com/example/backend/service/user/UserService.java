package com.example.backend.service.user;

import com.example.backend.models.domain.user.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.request.AdminRegisterRequest;
import com.example.backend.models.request.user.*;
import com.example.backend.models.vo.UserRolesInfoVo;
import com.example.backend.models.vo.UserRolesVo;
import com.example.backend.models.vo.UserVo;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * @author Mogullzr
 * @description 针对表【user(用户表)】的数据库操作Service
 * @createDate 2024-07-12 11:09:40
 */
public interface UserService extends IService<User> {
    // TODO 这里注释了注意一下
//    /**
//     * 用户注册
//     *
//     * @author Mogullzr
//     * @param Email 邮箱
//     * @param confirmNumber 验证码
//     * @param Account 用户名
//     * @param Password 密码
//     * @param CheckPassword 确认密码
//     * @return 新用户id
//     */

//    long UserRegister(String Account, String Email, String confirmNumber, String Password, String CheckPassword);

    /**
     * 获取所有用户允许知道的个人信心
     *
     * @param uuid 用户uuid
     * @return 脱敏信息
     */
    UserVo UserSearchByUuid(Long uuid);


    /**
     * 普通用户注册
     *
     * @param Account 账户
     * @param Email QQ邮箱
     * @param confirmNumber 邮箱确认密码
     * @param Password 密码
     * @param CheckPassword 确认密码
     * @return 是否成功
     */
    long UserRegister(String Account, String Email, String confirmNumber, String Password, String CheckPassword);
    /**
     * 管理员登录
     *
     * @author Mogullzr
     * @param Account 用户名
     * @param Password 密码
     * @return 脱敏后的用户信息
     */
    UserVo AdminLogin(String Account, String Password, String Token, HttpServletRequest httpServletRequest);

    /**
     * 用户登录
     *
     * @author Mogullzr
     * @param Account 用户名
     * @param Password 密码
     * @return 脱敏后的用户信息
     */
    UserVo UserLogin(String Account, String Password, HttpServletRequest httpServletRequest);

    /**
     * 通过Github登录
     *
     * @param code 获取的code
     * @param clientId 基本固定的
     * @param clientSecret 基本固定的
     * @param httpServletRequest 前端请求
     * @return 是否登录成功
     */
    Boolean UserLoginByGithub(String code, String clientId, String clientSecret, HttpServletRequest httpServletRequest);
    /**
     * 忘记密码找回
     *
     * @param userLoginEmailRequest 用户发送的请求
     * @return 是否允许重新设置密码
     */
    boolean UserSetPassword(UserRegisterRequest userLoginEmailRequest);
    /**
     * 脱敏用户信息
     *
     * @author Mogullzr
     * @param user 脱敏前用户信息
     * @return 脱敏用户信息
     */
    UserVo getSafetyUser(User user);

    /**
     * 用户注销
     *
     * @author Mogullzr
     * @param httpServletRequest 前端的http请求
     * @return 是否注销成功
     */
    int UserLogout(HttpServletRequest httpServletRequest);

    /**
     * 修改用户信息
     *
     * @param user               用户修改后的信息
     * @param httpServletRequest 前端的http请求
     * @return 是否修改成功
     * @author Mogullzr
     */
    boolean UserModify(UserModifyRequest user, HttpServletRequest httpServletRequest);


    /**
     * 上传图片到阿里云
     *
     * @param file 需要的图片
     * @param status 0表示上传头像，1表示上传背景图片，2表示上传文章图片
     * @param httpServletRequest 前端发送信息·
     * @return 是否上传成功/返回上传之后的地址
     */
    String UserUploadPicture(MultipartFile file, Integer status, HttpServletRequest httpServletRequest) throws IOException;

    /**
     * 用户用户uuid获取图片信息
     *
     * @param uuid 用户id
     * @return 背景地址
     */
    String UserGetPictureByUser(Long uuid);

    /**
     * 设置图片为某用户背景
     *
     * @param picture_address 背景图片地址
     * @param uuid 用户id
     * @return 是否设置成功
     */
    boolean UserSetPictureBackground(String picture_address, Long uuid);


    /**
     * 获取当前用户信息
     *
     * @author Mogullzr
     * @param httpServletRequest 前端的http请求
     * @return 用户信息
     */
    User getLoginUser(HttpServletRequest httpServletRequest);
    /**
     * 管理员身份校验
     *
     * @author Mogullzr
     * @param httpServletRequest  前端的http请求
     * @return 是否为管理员
     */
    boolean isAdmin(HttpServletRequest httpServletRequest);
    /**
     * 管理员身份校验
     *
     * @param loginUser 登录用户
     * @return 是否为管理员
     */
    boolean isAdmin(User loginUser);

    /**
     * 分页搜索所有用户信息
     * @param pageNum 页数
     *
     * @return 用户信息列表
     */
    List<User> adminGetUserList(Integer pageNum);

    /**
     * 封禁指定用户ID列表
     *
     * @param user_list 用户ID列表
     * @return
     */
    boolean adminBanUserList(List<Long> user_list);

    /**
     * 管理员取消封禁用户
     *
     * @param uuid 用户ID
     * @return 取消封禁用户
     */
    boolean adminCancelBanUser(Long uuid);

    /**
     * BOSS管理员分配管理员权限
     *
     * @param authorNameList 授权列表
     * @param uuid 用户ID
     * @return 是否授权成功
     */
    boolean bossAdminAuthorize(List<String> authorNameList, Long uuid);

    /**
     * 分页查询用户、管理员的权限信息
     *
     * @param userAuthSearchRequest 搜索请求
     * @return 分页搜索管理员权限
     */
    List<UserVo> listUserAuthVoByPage(UserAuthSearchRequest userAuthSearchRequest);


    /**
     * BOSS管理员创建管理员
     *
     * @param userRoleCreateRequest 创建角色请求
     * @return 是否设置成功
     */
    boolean bossAdminSetRoles(UserRoleCreateRequest userRoleCreateRequest);

    /**
     * BOSS管理员创建管理员
     *
     * @param userRolesSearchRequest 搜索请求
     * @return 查询到的信息
     */
    UserRolesInfoVo bossAdminGetRoles(UserRolesSearchRequest userRolesSearchRequest);

    /**
     * BOSS管理员进行
     *
     * @param adminRegisterRequest 注册信息请求
     * @return 是否创建管理员成功
     */
    boolean bossAdminAddAdmin(AdminRegisterRequest adminRegisterRequest);

    /**
     * 删除管理员
     *
     * @param uuid 用户ID
     * @return 是否成功删除管理员
     */
    boolean bossAdminCancelAdmin(Long uuid);

    /**
     * 获取管理员列表
     *
     * @return 管理员信息列表
     */
    List<User> bossAdminGetAdminList();

    /**
     * 设置某用户为管理员
     * @param uuid 用户ID
     * @return 是否设置成功
     */
    boolean bossAdminSetAdmin(Long uuid);

    /**
     * 查询用户
     *
     * @param userSearchRequest 前端搜索请求
     * @return 返回脱敏用户信息
     */
    List<UserVo> listUserVoByPage(UserSearchRequest userSearchRequest);
}
