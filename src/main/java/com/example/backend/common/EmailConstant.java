package com.example.backend.common;

import lombok.Getter;

/**
 * 邮件状态
 */

@Getter
public enum EmailConstant {
    ADMIN_SEND_1_TOKEN("尊敬的管理员，您好，这周新的口令已经更新了，请及时查看哦(*^▽^*)："),
    ADMIN_SEND_2_TOKEN("下次口令也会以同样的方式在一周后发给你哦(*^▽^*)"),
    EMAIL_SEND_SUCCESS("皇上，臣妾已为您发送了邮箱哦！"),//邮件发送成功，请查收！
    EMAIL_MESSAGE("您的QQ邮箱验证码为："),
    EMAIL_OUTTIME_TEN("请在2分钟内完成验证"),
    EMAIL_TITLE("ByteOJ验证码"),// 邮箱验证码发送的标题
    EMAIL_CODE("email_code"),// 邮箱验证码redis的key
    EMAIL_CODE_ERROR("皇上，请核实您的QQ邮箱验证码是否正确！"),// qq邮箱验证码错误
    NOT_EXIST_EMAIL("皇上，臣妾没有找到您的QQ邮箱，请确认是否正确！");// 邮箱不存在

    private final String Value;

    EmailConstant(String value){
        this.Value = value;
    }
}
