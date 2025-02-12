    package com.example.backend.utils;

import com.example.backend.common.EmailConstant;
import com.example.backend.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * 发送邮箱验证码工具类
 */
@Service
public class EmailSendUtil {
    // 混淆盐值
    public static final String SALT = "Mogullzr,搞我网站的我是你爹";
    @Resource
    private UserMapper userMapper;

    // 注入JavaMailSender接口
    @Resource
    private JavaMailSender mailSender;

    // 通过value注解得到配置文件中发送者的邮箱
    @Value("${spring.mail.username}")
    private String userName;// 用户发送者


    /**
     * 获取盐值
     */
    public String getSALT() {
        return SALT;
    }
    /**
     * 创建一个发送邮箱验证的方法
     *
     * @param to 发送给的对方邮箱号
     * @return 是否发送成功
     */
    public boolean sendVerificationEmail(String to) {
        // 邮箱验证码 定义为StringBuilder对于增删改操作有优势
        final StringBuilder EMAIL_CODE = new StringBuilder();
        // 定义email信息格式
        SimpleMailMessage message = new SimpleMailMessage();
        // 接收者邮箱，为调用本方法传入的接收者的邮箱xxx@qq.com
        message.setTo(to);
        // 调用生成6位数字和字母的方法，生成验证码，该方法在下面定义好了
        generateRandomCode(EMAIL_CODE);
        // 设置发件人
        message.setFrom(userName);

        // 邮件主题
        message.setSubject(EmailConstant.EMAIL_TITLE.getValue());
        // 邮件内容  设置的邮件内容，这里我使用了常量类字符串，加上验证码，再加上常量类字符串
        message.setText(EmailConstant.EMAIL_MESSAGE.getValue() + EMAIL_CODE + EmailConstant.EMAIL_OUTTIME_TEN.getValue());
        // 开始发送
        mailSender.send(message);

        RedisUtils.set(EmailConstant.EMAIL_CODE.getValue() + to, DigestUtils.md5DigestAsHex((SALT + EMAIL_CODE).getBytes()), 300, TimeUnit.SECONDS);
        EMAIL_CODE.setLength(0);
        return true;
    }

    public boolean sendTokenToAdminEmail(String to) {
        // 邮箱验证码 定义为StringBuilder对于增删改操作有优势
        final StringBuilder TOKEN = new StringBuilder();

        // 定义email信息格式
        SimpleMailMessage message = new SimpleMailMessage();

        // 接收者邮箱，为调用本方法传入的接收者的邮箱xxx@qq.com
        message.setTo(to);
        // 调用生成6位数字和字母的方法，生成验证码，该方法在下面定义好了
        String token = UUID.randomUUID().toString();
        TOKEN.append(token);

        // 设置发件人
        message.setFrom(userName);

        // 邮件主题
        message.setSubject(EmailConstant.EMAIL_TITLE.getValue());
        // 邮件内容  设置的邮件内容，这里我使用了常量类字符串，加上验证码，再加上常量类字符串
        message.setText(EmailConstant.ADMIN_SEND_1_TOKEN.getValue() + token + EmailConstant.ADMIN_SEND_2_TOKEN.getValue());
        // 开始发送
        mailSender.send(message);

        // 最后设置Redis
        RedisUtils.set("ADMIN_TOKEN_" + to, DigestUtils.md5DigestAsHex((SALT + token).getBytes()));
        token = "";
        TOKEN.setLength(0);
        return true;
    }

    /**
     * 随机生成6位字母加数字组合的验证码
     *
     * @return
     */
    public StringBuilder generateRandomCode(StringBuilder EMAIL_CODE) {
        // 字母和数字组合
        String str = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        // 拆分每一个字符放到数组中
        String[] newStr = str.split("");
        // 循环随机生成6为数字和字母组合
        for (int i = 0; i < 6; i++) {
            // 通过循环6次，为stringBuilder追加内容，内容为随机数✖62，取整
            EMAIL_CODE.append(newStr[(int) (Math.random() * 62)]);
        }
        //TODO 这里存储的key如果多个用户同时发送的话会覆盖key，就会导致第一个人的验证码被覆盖
        // 存入Redis中并设置时长为2分钟
        return EMAIL_CODE;
    }
}
