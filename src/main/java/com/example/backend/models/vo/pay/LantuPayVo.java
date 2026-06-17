package com.example.backend.models.vo.pay;

import lombok.Data;

@Data
public class LantuPayVo {
    /**
     * 支付二维码
     */
    private String weixin_url;

    /**
     * 订单号
     */
    private String out_trade_no;

    /**
     * 价格
     */
    private String fund;
}
