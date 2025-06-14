package com.example.backend.models.domain.log;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @TableName log_browser
 */
@TableName(value ="log_browser")
@Data
public class LogBrowser implements Serializable {
    /**
     * ID
     */
    @TableId(type = IdType.AUTO)
    private Long id;

    /**
     * 0,1,2分别表示关联表daily/weekly/monthly
     */
    private Integer type;

    /**
     * 日志分析信息ID
     */
    private Long log_info_id;

    /**
     * 浏览器名称
     */
    private String browser;

    /**
     * 浏览器使用次数
     */
    private Integer total;

    /**
     * 创建时间
     */
    private Date create_time;

    /**
     * 是否删除
     */
    private Integer is_delete;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        LogBrowser other = (LogBrowser) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getType() == null ? other.getType() == null : this.getType().equals(other.getType()))
            && (this.getLog_info_id() == null ? other.getLog_info_id() == null : this.getLog_info_id().equals(other.getLog_info_id()))
            && (this.getBrowser() == null ? other.getBrowser() == null : this.getBrowser().equals(other.getBrowser()))
            && (this.getTotal() == null ? other.getTotal() == null : this.getTotal().equals(other.getTotal()))
            && (this.getCreate_time() == null ? other.getCreate_time() == null : this.getCreate_time().equals(other.getCreate_time()))
            && (this.getIs_delete() == null ? other.getIs_delete() == null : this.getIs_delete().equals(other.getIs_delete()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getType() == null) ? 0 : getType().hashCode());
        result = prime * result + ((getLog_info_id() == null) ? 0 : getLog_info_id().hashCode());
        result = prime * result + ((getBrowser() == null) ? 0 : getBrowser().hashCode());
        result = prime * result + ((getTotal() == null) ? 0 : getTotal().hashCode());
        result = prime * result + ((getCreate_time() == null) ? 0 : getCreate_time().hashCode());
        result = prime * result + ((getIs_delete() == null) ? 0 : getIs_delete().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", type=").append(type);
        sb.append(", log_info_id=").append(log_info_id);
        sb.append(", browser=").append(browser);
        sb.append(", total=").append(total);
        sb.append(", create_time=").append(create_time);
        sb.append(", is_delete=").append(is_delete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}