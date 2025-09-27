package generator.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @TableName account_pay_back
 */
@TableName(value ="account_pay_back")
@Data
public class AccountPayBack {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 退款单号
     */
    private String out_trade_no;

    /**
     * 退单号
     */
    private String out_refund_no;

    /**
     * 退款信息描述
     */
    private String refund_desc;

    /**
     * 逻辑删除
     */
    private Integer is_delete;

    /**
     * 创建时间
     */
    private Date create_date;

    /**
     * 更新时间
     */
    private Date update_date;

    /**
     * 退钱具体量
     */
    private String pay_back;
}