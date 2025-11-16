package com.example.backend.models.domain.pay;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * 
 * @TableName account_fund
 */
@TableName(value ="account_fund")
@Entity
@Data
public class AccountFund {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    @Id
    private Long id;

    /**
     * 商单号
     */
    private String out_trade_no;

    /**
     * 创建时间
     */
    private Date create_date;

    /**
     * 更新时间
     */
    private Date update_date;

    /**
     * QQ号
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
     * 用户名
     */
    private String username;

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
     * 微信单号
     */
    private String wx_trade_no;

    /**
     * 逻辑删除
     */
    private Integer is_delete;
}