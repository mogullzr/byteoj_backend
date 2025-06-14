package com.example.backend.models.domain.log;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 操作日志
 * @TableName log_operation
 */
@TableName(value ="log_operation")
@Data
public class LogOperation implements Serializable {
    /**
     * 操作日志ID
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 操作的功能模块
     */
    private String module;

    /**
     * 操作描述
     */
    private String description;

    /**
     * 请求方法GET/POST/PUT/DELETE等
     */
    private String type;

    /**
     * 操作的请求参数
     */
    private String request_param;

    /**
     * 操作的返回参数
     */
    private String response_param;

    /**
     * 状态码
     */
    private Integer code;

    /**
     * 操作人员ID
     */
    private Long operator_id;

    /**
     * 操作方法
     */
    private String method;

    /**
     * 请求URL
     */
    private String url;

    /**
     * 请求IP
     */
    private String ip;

    /**
     * 浏览器
     */
    private String browser;

    /**
     * 操作时长
     */
    private Long operation_time;

    /**
     * 操作系统
     */
    private String os;

    /**
     * 操作时间
     */
    private Date create_time;

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
        LogOperation other = (LogOperation) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getModule() == null ? other.getModule() == null : this.getModule().equals(other.getModule()))
            && (this.getDescription() == null ? other.getDescription() == null : this.getDescription().equals(other.getDescription()))
            && (this.getType() == null ? other.getType() == null : this.getType().equals(other.getType()))
            && (this.getRequest_param() == null ? other.getRequest_param() == null : this.getRequest_param().equals(other.getRequest_param()))
            && (this.getResponse_param() == null ? other.getResponse_param() == null : this.getResponse_param().equals(other.getResponse_param()))
            && (this.getCode() == null ? other.getCode() == null : this.getCode().equals(other.getCode()))
            && (this.getOperator_id() == null ? other.getOperator_id() == null : this.getOperator_id().equals(other.getOperator_id()))
            && (this.getMethod() == null ? other.getMethod() == null : this.getMethod().equals(other.getMethod()))
            && (this.getUrl() == null ? other.getUrl() == null : this.getUrl().equals(other.getUrl()))
            && (this.getIp() == null ? other.getIp() == null : this.getIp().equals(other.getIp()))
            && (this.getBrowser() == null ? other.getBrowser() == null : this.getBrowser().equals(other.getBrowser()))
            && (this.getOperation_time() == null ? other.getOperation_time() == null : this.getOperation_time().equals(other.getOperation_time()))
            && (this.getOs() == null ? other.getOs() == null : this.getOs().equals(other.getOs()))
            && (this.getCreate_time() == null ? other.getCreate_time() == null : this.getCreate_time().equals(other.getCreate_time()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getModule() == null) ? 0 : getModule().hashCode());
        result = prime * result + ((getDescription() == null) ? 0 : getDescription().hashCode());
        result = prime * result + ((getType() == null) ? 0 : getType().hashCode());
        result = prime * result + ((getRequest_param() == null) ? 0 : getRequest_param().hashCode());
        result = prime * result + ((getResponse_param() == null) ? 0 : getResponse_param().hashCode());
        result = prime * result + ((getCode() == null) ? 0 : getCode().hashCode());
        result = prime * result + ((getOperator_id() == null) ? 0 : getOperator_id().hashCode());
        result = prime * result + ((getMethod() == null) ? 0 : getMethod().hashCode());
        result = prime * result + ((getUrl() == null) ? 0 : getUrl().hashCode());
        result = prime * result + ((getIp() == null) ? 0 : getIp().hashCode());
        result = prime * result + ((getBrowser() == null) ? 0 : getBrowser().hashCode());
        result = prime * result + ((getOperation_time() == null) ? 0 : getOperation_time().hashCode());
        result = prime * result + ((getOs() == null) ? 0 : getOs().hashCode());
        result = prime * result + ((getCreate_time() == null) ? 0 : getCreate_time().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", module=").append(module);
        sb.append(", description=").append(description);
        sb.append(", type=").append(type);
        sb.append(", request_param=").append(request_param);
        sb.append(", response_param=").append(response_param);
        sb.append(", code=").append(code);
        sb.append(", operator_id=").append(operator_id);
        sb.append(", method=").append(method);
        sb.append(", url=").append(url);
        sb.append(", ip=").append(ip);
        sb.append(", browser=").append(browser);
        sb.append(", operation_time=").append(operation_time);
        sb.append(", os=").append(os);
        sb.append(", create_time=").append(create_time);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}