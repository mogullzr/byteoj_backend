package com.example.backend.models.vo.pay;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.util.Date;

@Data
public class LantuPayViewVo {
    /**
     * ID
     */
    private Long id;

    /**
     * 商单号
     */
    private String out_trade_no;

    /**
     * 微信单号
     */
    private String wx_trade_no;

    /**
     * 创建时间
     */
    private Date create_date;

    /**
     * 号
     */
    private String qq;

    /**
     * 金额
     */
    private String fund;

    /**
     * 用户ID
     */
    private Long uuid;

    /**
     * 0支付成功/1支付成功/2支付失败
     */
    private Integer status;

    /**
     * 课程ID
     */
    private Long course_id;

    /**
     * 课程名称
     */
    private String course_title;

    /**
     * 面数
     */
    private Long size;

    /**
     * 逻辑删除
     */
    private Integer is_delete;
}
