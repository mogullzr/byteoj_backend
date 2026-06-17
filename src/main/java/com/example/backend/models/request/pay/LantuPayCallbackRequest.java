package com.example.backend.models.request.pay;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

@Data
public class LantuPayCallbackRequest implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 状态码
     */
    @NotBlank
    private String code;

    /**
     * 商家号
     */
    private String mch_id;

    /**
     * 时间戳
     */
    private String timestamp;

    /**
     * 系统订单号
     */
    private String order_no;

    /**
     * 商户订单号
     */
    private String out_trade_no;

    /**
     * 支付宝或微信支付订单号
     */
    private String pay_no;

    /**
     * 支付金额
     */
    private String total_fee;

    /**
     * 密钥信息（!important）
     */
    private String sign;
}
