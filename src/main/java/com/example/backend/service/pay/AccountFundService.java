package com.example.backend.service.pay;

import com.example.backend.models.domain.pay.AccountFund;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.pay.LantuPayOtherRequest;
import com.example.backend.models.request.pay.LantuPayRequest;
import com.example.backend.models.vo.pay.LantuPayViewVo;
import com.example.backend.models.vo.pay.LantuPayVo;

import java.io.IOException;
import java.util.List;

/**
* @author Mogullzr
* @description 针对表【account_fund】的数据库操作Service
* @createDate 2025-09-25 20:51:20
*/
public interface AccountFundService extends IService<AccountFund> {

    /**
     * 蓝兔支付功能
     *
     * @param loginUser 用户信息
     * @param lantuPayRequest 支付请求（课程）
     * @return 支付页面
     */
    LantuPayVo lantuPay(LantuPayRequest lantuPayRequest,User loginUser) throws IOException;


    /**
     * 批量退款
     *
     * @param lantuPayBackRequest 蓝兔退款请求
     * @return 是否退款成功
     */
    List<String> lantuPayBack(List<LantuPayOtherRequest> lantuPayBackRequest);

    /**
     *
     */
    List<LantuPayViewVo> lantuPayView(String keyword, Integer pageNum, Integer pageSize);

    /**
     * 支付状态查询
     *
     * @param lantuPayOtherRequest 蓝兔支付其他类型请求
     */
    Boolean lantuPayStatus(LantuPayOtherRequest lantuPayOtherRequest);
}
