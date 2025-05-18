package com.example.backend.utils;

import com.example.backend.common.EmailConstant;
import com.example.backend.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.time.LocalDate;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * 发送邮箱验证码工具类（增强版）
 */
@Service
public class EmailSendUtil {
    // 混淆盐值
    public static final String SALT = "Mogullzr,搞我网站的我是你爹";
    @Resource
    private UserMapper userMapper;

    @Resource
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}")
    private String userName;

    /**
     * 获取盐值
     */
    public String getSALT() {
        return SALT;
    }
    /**
     * 发送验证码邮件（现代风格）
     */
    public boolean sendVerificationEmail(String to) {
        try {
            String emailCode = String.format("%06d", new Random().nextInt(999999));

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            helper.setTo(to);
            helper.setFrom(getFormattedSender());
            helper.setSubject(EmailConstant.EMAIL_TITLE.getValue());

            String htmlContent = buildModernEmailTemplate(
                    EmailConstant.EMAIL_TITLE.getValue(),
                    EmailConstant.EMAIL_MESSAGE.getValue(),
                    emailCode.toString(),
                    EmailConstant.EMAIL_OUTTIME_TEN.getValue(),
                    "验证码"
            );

            helper.setText(htmlContent, true);
            addEmailLogo(helper);
            mailSender.send(message);

            RedisUtils.set(EmailConstant.EMAIL_CODE.getValue() + to,
                    DigestUtils.md5DigestAsHex((SALT + emailCode).getBytes()),
                    300, TimeUnit.SECONDS);

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 发送管理员Token邮件（现代风格）
     */
    public boolean sendTokenToAdminEmail(String to) {
        try {
            // 格式化为更美观的Token：XXXX-XXXX-XXXX
            String token = formatToken(UUID.randomUUID().toString() + UUID.randomUUID().toString());

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            helper.setTo(to);
            helper.setFrom(getFormattedSender());
            helper.setSubject(EmailConstant.EMAIL_TITLE.getValue());

            String htmlContent = buildModernEmailTemplate(
                    EmailConstant.EMAIL_TITLE.getValue(),
                    EmailConstant.ADMIN_SEND_1_TOKEN.getValue(),
                    token,
                    EmailConstant.ADMIN_SEND_2_TOKEN.getValue(),
                    "访问令牌"
            );

            helper.setText(htmlContent, true);
            addEmailLogo(helper);
            mailSender.send(message);

            RedisUtils.set("ADMIN_TOKEN_" + to,
                    DigestUtils.md5DigestAsHex((SALT + token).getBytes()));

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // ... 保留generateRandomCode方法 ...

    /**
     * 构建现代风格的邮件模板
     */
    private String buildModernEmailTemplate(String title, String header, String code, String footer, String codeType) {
        return "<!DOCTYPE html>" +
                "<html lang=\"zh-CN\">" +
                "<head>" +
                "  <meta charset=\"UTF-8\">" +
                "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" +
                "  <title>" + title + "</title>" +
                "  <style>" +
                "    body { " +
                "      font-family: 'Segoe UI', Roboto, 'PingFang SC', 'Microsoft YaHei', sans-serif; " +
                "      background-color: #f7fafc; " +
                "      margin: 0; " +
                "      padding: 0; " +
                "      line-height: 1.5; " +
                "      color: #4a5568;" +
                "    }" +
                "    .container { " +
                "      max-width: 600px; " +
                "      margin: 20px auto; " +
                "      background: white; " +
                "      border-radius: 12px; " +
                "      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.08); " +
                "      overflow: hidden; " +
                "    }" +
                "    .header { " +
                "      background: linear-gradient(135deg, #7c3aed 0%, #6b46c1 100%); " +
                "      color: white; " +
                "      padding: 32px 20px; " +
                "      text-align: center; " +
                "    }" +
                "    .header h1 { " +
                "      margin: 0; " +
                "      font-size: 26px; " +
                "      font-weight: 600; " +
                "    }" +
                "    .content { " +
                "      padding: 32px; " +
                "      line-height: 1.6; " +
                "    }" +
                "    .code-container { " +
                "      background: #f8f9fa; " +
                "      border-radius: 8px; " +
                "      padding: 20px; " +
                "      margin: 30px 0; " +
                "      text-align: center; " +
                "      border: 1px solid #edf2f7;" +
                "    }" +
                "    .code-label { " +
                "      font-size: 15px; " +
                "      color: #718096; " +
                "      margin-bottom: 12px; " +
                "    }" +
                "    .code-value { " +
                "      font-family: 'Courier New', monospace; " +
                "      font-size: 28px; " +
                "      font-weight: 700; " +
                "      color: #2d3748; " +
                "      letter-spacing: 2px; " +
                "      padding: 8px 0;" +
                "    }" +
                "    .token-value { " +
                "      font-family: 'Courier New', monospace; " +
                "      font-size: 20px; " +
                "      font-weight: 700; " +
                "      color: #2d3748; " +
                "      word-break: break-all; " +
                "      background: #f8f9fa; " +
                "      padding: 16px; " +
                "      border-radius: 6px; " +
                "      display: inline-block; " +
                "      line-height: 1.5;" +
                "    }" +
                "    .footer { " +
                "      text-align: center; " +
                "      padding: 24px; " +
                "      color: #a0aec0; " +
                "      font-size: 13px; " +
                "      border-top: 1px solid #edf2f7; " +
                "      background: #f9fafb;" +
                "    }" +
                "    .notice { " +
                "      color: #718096; " +
                "      font-size: 14px; " +
                "      margin-top: 24px;" +
                "    }" +
                "  </style>" +
                "</head>" +
                "<body>" +
                "  <div class=\"container\">" +
                "    <div class=\"header\">" +
                "      <h1>" + title + "</h1>" +
                "    </div>" +
                "    <div class=\"content\">" +
                "      <p>" + header + "</p>" +
                "      <div class=\"code-container\">" +
                "        <div class=\"code-label\">您的" + codeType + "</div>" +
                "        <div class=\"" + (codeType.equals("验证码") ? "code-value" : "token-value") + "\">" + code + "</div>" +
                "      </div>" +
                "      <p>" + footer + "</p>" +
                "      <p class=\"notice\">此邮件为系统自动发送，请勿直接回复</p>" +
                "    </div>" +
                "    <div class=\"footer\">" +
                "      © " + LocalDate.now().getYear() + " " + title + " · 版权所有" +
                "    </div>" +
                "  </div>" +
                "</body>" +
                "</html>";
    }

    /**
     * 格式化Token为更美观的格式
     */
    private String formatToken(String token) {
        token = token.replace("-", "").substring(0, 24);
        return token.substring(0, 4) + "-" + token.substring(4, 8) + "-" + token.substring(8, 12) + "-" + token.substring(12, 16) + "-" + token.substring(16, 20) + "-" + token.substring(20, 24);
    }

    /**
     * 添加邮件Logo
     */
    private void addEmailLogo(MimeMessageHelper helper) throws MessagingException {
        try {
            ClassPathResource logo = new ClassPathResource("static/images/email-logo.png");
            if (logo.exists()) {
                helper.addInline("logo", logo);
            }
        } catch (Exception e) {
            // 静默处理，没有logo也能发送邮件
        }
    }

    /**
     * 获取格式化后的发件人
     */
    private String getFormattedSender() {
        return "\"ByteOJ系统通知\" <" + userName + ">";
    }
}