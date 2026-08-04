package com.example.backend.utils;

import com.example.backend.common.EmailConstant;
import com.example.backend.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/**
 * 发送邮箱验证码工具类（增强版）
 */
@Service
public class EmailSendUtil {
    // 混淆盐值
    public static final String SALT = "Mogullzr,搞我网站的我是你爹";

    public static final String EMAIL_ALERT_TITLE = "【系统告警】检测到异常掉线";
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
            // 验证邮箱格式
            if (!isValidEmail(to)) {
                throw new IllegalArgumentException("无效的收件人邮箱地址: " + to);
            }

            String emailCode = String.format("%06d", new Random().nextInt(999999));

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            helper.setTo(to);
            helper.setFrom(getFormattedSender());
            helper.setSubject(EmailConstant.EMAIL_TITLE.getValue());

            String htmlContent = buildModernEmailTemplate(
                    EmailConstant.EMAIL_TITLE.getValue(),
                    EmailConstant.EMAIL_MESSAGE.getValue(),
                    emailCode,
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
            // 验证邮箱格式
            if (!isValidEmail(to)) {
                throw new IllegalArgumentException("无效的收件人邮箱地址: " + to);
            }

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

    /**
     * 发送权限授予通知邮件
     */
    public boolean sendRoleAssignmentEmail(String to, List<String> roles) {
        try {
            // 验证邮箱格式
            if (!isValidEmail(to)) {
                throw new IllegalArgumentException("无效的收件人邮箱地址: " + to);
            }

            // 将角色列表格式化为字符串用于 Redis 存储
            String roleList = roles.stream().collect(Collectors.joining(", "));
            String roleHash = DigestUtils.md5DigestAsHex((SALT + roleList).getBytes());

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            helper.setTo(to);
            helper.setFrom(getFormattedSender());
            helper.setSubject("权限授予通知");

            // 构建角色列表 HTML
            String roleListHtml = "<ul class=\"role-list\">" +
                    roles.stream()
                            .map(role -> "<li>" + role + "</li>")
                            .collect(Collectors.joining()) +
                    "</ul>";

            String htmlContent = buildModernEmailTemplate(
                    "权限授予通知",
                    "恭喜您，您已被授予以下权限角色：",
                    roleListHtml,
                    "请妥善管理您的权限，并及时登录系统查看详情。",
                    "权限角色"
            );

            helper.setText(htmlContent, true);
            addEmailLogo(helper);
            mailSender.send(message);

            // 存储角色信息到 Redis，设置 24 小时有效期
            RedisUtils.set("ROLE_ASSIGNMENT_" + to,
                    roleHash,
                    24 * 60 * 60, TimeUnit.SECONDS);

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 验证邮箱地址格式
     */
    private boolean isValidEmail(String email) {
        return email != null && email.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$");
    }

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
                "      font-family: 'PingFang SC', 'Microsoft YaHei', 'Helvetica Neue', Helvetica, Arial, sans-serif; " +
                "      background-color: #f4f7fa; " +
                "      margin: 0; " +
                "      padding: 20px; " +
                "      line-height: 1.6; " +
                "      color: #333333; " +
                "    }" +
                "    .container { " +
                "      max-width: 640px; " +
                "      margin: 0 auto; " +
                "      background: #ffffff; " +
                "      border-radius: 16px; " +
                "      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); " +
                "      overflow: hidden; " +
                "    }" +
                "    .header { " +
                "      background: linear-gradient(135deg, #4c51bf 0%, #7c3aed 100%); " +
                "      color: #ffffff; " +
                "      padding: 24px; " +
                "      text-align: center; " +
                "    }" +
                "    .header h1 { " +
                "      margin: 0; " +
                "      font-size: 24px; " +
                "      font-weight: 700; " +
                "      letter-spacing: 0.5px; " +
                "    }" +
                "    .content { " +
                "      padding: 24px 32px; " +
                "    }" +
                "    .content p { " +
                "      font-size: 16px; " +
                "      margin: 0 0 16px; " +
                "    }" +
                "    .code-container { " +
                "      background: #f9fafb; " +
                "      border-radius: 8px; " +
                "      padding: 16px; " +
                "      margin: 24px 0; " +
                "      text-align: center; " +
                "      border: 1px solid #e2e8f0; " +
                "    }" +
                "    .code-label { " +
                "      font-size: 14px; " +
                "      color: #6b7280; " +
                "      margin-bottom: 8px; " +
                "      text-transform: uppercase; " +
                "      letter-spacing: 0.5px; " +
                "    }" +
                "    .code-value { " +
                "      font-family: 'Courier New', monospace; " +
                "      font-size: 24px; " +
                "      font-weight: 700; " +
                "      color: #1f2937; " +
                "      letter-spacing: 3px; " +
                "      padding: 8px 16px; " +
                "      background: #e5e7eb; " +
                "      border-radius: 6px; " +
                "      display: inline-block; " +
                "    }" +
                "    .token-value { " +
                "      font-family: 'Courier New', monospace; " +
                "      font-size: 18px; " +
                "      font-weight: 600; " +
                "      color: #1f2937; " +
                "      word-break: break-all; " +
                "      background: #e5e7eb; " +
                "      padding: 12px 16px; " +
                "      border-radius: 6px; " +
                "      display: inline-block; " +
                "      line-height: 1.5; " +
                "    }" +
                "    .role-list { " +
                "      list-style: none; " +
                "      padding: 0; " +
                "      margin: 0; " +
                "      display: grid; " +
                "      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); " +
                "      gap: 12px; " +
                "      font-size: 15px; " +
                "      color: #1f2937; " +
                "    }" +
                "    .role-list li { " +
                "      background: #f1f5f9; " +
                "      padding: 12px 16px; " +
                "      border-radius: 8px; " +
                "      border: 1px solid #e2e8f0; " +
                "      display: flex; " +
                "      align-items: center; " +
                "      gap: 8px; " +
                "      font-weight: 500; " +
                "      transition: transform 0.2s ease, box-shadow 0.2s ease; " +
                "    }" +
                "    .role-list li::before { " +
                "      content: '✓'; " +
                "      color: #10b981; " +
                "      font-size: 16px; " +
                "      font-weight: bold; " +
                "    }" +
                "    .role-list li:hover { " +
                "      transform: translateY(-2px); " +
                "      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); " +
                "    }" +
                "    .footer { " +
                "      text-align: center; " +
                "      padding: 20px; " +
                "      color: #6b7280; " +
                "      font-size: 13px; " +
                "      border-top: 1px solid #e2e8f0; " +
                "      background: #f9fafb; " +
                "    }" +
                "    .notice { " +
                "      color: #6b7280; " +
                "      font-size: 14px; " +
                "      margin-top: 20px; " +
                "      text-align: center; " +
                "    }" +
                "    @media (max-width: 600px) { " +
                "      .container { " +
                "        margin: 10px; " +
                "        border-radius: 12px; " +
                "      }" +
                "      .role-list { " +
                "        grid-template-columns: 1fr; " +
                "      }" +
                "      .header { " +
                "        padding: 20px; " +
                "      }" +
                "      .content { " +
                "        padding: 20px; " +
                "      }" +
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
                "        <div class=\"" + (codeType.equals("验证码") ? "code-value" : codeType.equals("权限角色") ? "role-list" : "token-value") + "\">" + code + "</div>" +
                "      </div>" +
                "      <p>" + footer + "</p>" +
                "      <p class=\"notice\">此邮件为系统自动发送，请勿直接回复</p>" +
                "    </div>" +
                "    <div class=\"footer\">" +
                "      © " + LocalDate.now().getYear() + " ByteOJ · 版权所有" +
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
    private InternetAddress getFormattedSender() throws UnsupportedEncodingException {
        // 验证 userName 是否为合法邮箱地址
        if (!isValidEmail(userName)) {
            throw new IllegalStateException("无效的发件人邮箱地址: " + userName);
        }
        return new InternetAddress(userName, "ByteOJ系统通知", "UTF-8");
    }

    /**
     * 发送系统掉线警告邮件
     * @param to 收件人邮箱
     * @param serviceName 掉线的服务/组件名称
     * @param offlineTime 掉线发生的时间
     * @return 是否发送成功
     */
    public boolean sendOfflineAlertEmail(String to, String serviceName, String offlineTime) {
        try {
            if (!isValidEmail(to)) {
                throw new IllegalArgumentException("无效的收件人邮箱地址: " + to);
            }

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setTo(to);
            helper.setFrom(getFormattedSender());
            helper.setSubject(EMAIL_ALERT_TITLE);

            // 构建警告邮件的 HTML 内容
            String htmlContent = buildAlertEmailTemplate(serviceName, offlineTime);
            helper.setText(htmlContent, true);

            // 如果有专门的警告图标，可以添加内联资源（模拟Logo逻辑）
            // addAlertIcon(helper);

            mailSender.send(message);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 构建系统掉线告警邮件的 HTML 模板
     */
    private String buildAlertEmailTemplate(String serviceName, String offlineTime) {
        return "<!DOCTYPE html>" +
                "<html lang=\"zh-CN\">" +
                "<head>" +
                " <meta charset=\"UTF-8\">" +
                " <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" +
                " <title>系统告警</title>" +
                " <style>" +
                " body { " +
                " font-family: 'PingFang SC', 'Microsoft YaHei', sans-serif; " +
                " background-color: #f4f4f5; " +
                " margin: 0; " +
                " padding: 20px; " +
                " color: #1f2937; " +
                " }" +
                " .container { " +
                " max-width: 640px; " +
                " margin: 0 auto; " +
                " background: #ffffff; " +
                " border-radius: 12px; " +
                " box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); " +
                " overflow: hidden; " +
                " }" +
                " .header { " +
                " background: linear-gradient(135deg, #ef4444 0%, #dc2626 100%); /* 红色警示渐变 */" +
                " color: #ffffff; " +
                " padding: 24px; " +
                " text-align: center; " +
                " }" +
                " .header h1 { " +
                " margin: 0; " +
                " font-size: 24px; " +
                " font-weight: 700; " +
                " letter-spacing: 0.5px; " +
                " }" +
                " .content { " +
                " padding: 24px 32px; " +
                " }" +
                " .content p { " +
                " font-size: 16px; " +
                " margin: 0 0 16px; " +
                " }" +
                " .alert-box { " +
                " background: #fee2e2; /* 红色背景 */" +
                " border: 1px solid #fecaca; " +
                " border-radius: 8px; " +
                " padding: 16px; " +
                " margin: 20px 0; " +
                " color: #991b1b; " +
                " }" +
                " .alert-box strong { " +
                " color: #b91c1c; " +
                " }" +
                " .info-grid { " +
                " display: grid; " +
                " grid-template-columns: 1fr 1fr; " +
                " gap: 12px; " +
                " margin: 20px 0; " +
                " font-size: 14px; " +
                " }" +
                " .info-item { " +
                " background: #f9fafb; " +
                " padding: 12px; " +
                " border-radius: 6px; " +
                " }" +
                " .info-label { " +
                " font-weight: 600; " +
                " color: #4b5563; " +
                " }" +
                " .footer { " +
                " text-align: center; " +
                " padding: 20px; " +
                " color: #6b7280; " +
                " font-size: 13px; " +
                " border-top: 1px solid #e5e7eb; " +
                " background: #f9fafb; " +
                " }" +
                " </style>" +
                "</head>" +
                "<body>" +
                " <div class=\"container\">" +
                " <div class=\"header\">" +
                " <h1>🚨 系统掉线警告</h1>" +
                " </div>" +
                " <div class=\"content\">" +
                " <p>尊敬的管理员，您好：</p>" +
                " <div class=\"alert-box\">" +
                " <strong>【严重告警】</strong> 系统监控检测到核心服务连接中断。" +
                " </div>" +
                " <p>以下是掉线事件的详细信息，请立即进行排查：</p>" +

                " <div class=\"info-grid\">" +
                " <div class=\"info-item\">" +
                " <div class=\"info-label\">异常服务</div>" +
                " <div>" + serviceName + "</div>" +
                " </div>" +
                " <div class=\"info-item\">" +
                " <div class=\"info-label\">掉线时间</div>" +
                " <div>" + offlineTime + "</div>" +
                " </div>" +
                " </div>" +

                " <p><strong>建议操作：</strong> 请检查服务器网络连接、服务进程状态及日志文件。</p>" +

                " <p class=\"notice\">此邮件由系统监控模块自动发送。</p>" +
                " </div>" +
                " <div class=\"footer\">" +
                " © " + LocalDate.now().getYear() + " ByteOJ · 系统监控中心" +
                " </div>" +
                " </div>" +
                "</body>" +
                "</html>";
    }
    /**
     * （可选）如果项目中有警告图标，可以添加此方法
     */
//     private void addAlertIcon(MimeMessageHelper helper) throws MessagingException {
//         try {
//             ClassPathResource icon = new ClassPathResource("static/images/alert-warning.png");
//             if (icon.exists()) {
//                 helper.addInline("alertIcon", icon);
//             }
//         } catch (Exception e) {
//             // 静默处理
//         }
//     }
}