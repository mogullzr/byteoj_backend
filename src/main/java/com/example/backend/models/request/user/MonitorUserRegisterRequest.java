package com.example.backend.models.request.user;

import lombok.Data;

import javax.persistence.Column;
import java.util.Date;
import java.util.List;

@Data
public class MonitorUserRegisterRequest {
    /**
     * 用户名
     */
    private String username;

    /**
     * mac地址
     */
    private List<String> mac_address;

    /**
     * mac地址其二
     */
    private String primary_mac;

    /**
     * "指纹"
     */
    @Column(name = "fingerprint", length = 16)
    private String fingerprint;

    /**
     * ip
     */
    private String ip;

    /**
     * hostname
     */
    private String hostname;

    /**
     * 时间戳
     */
    private Date timestamp;

    /**
     * 真正mac地址
     */
    private String raw_mac_hex;
}
