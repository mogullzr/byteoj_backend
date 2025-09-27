package com.example.backend.models.request.pay;

import lombok.Data;

import java.io.Serializable;

@Data
public class LantuPayOtherRequest implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 单号
     */
    private String out_trade_no;

    /**
     * 退款描述
     */
    private String refund_desc;
}
