package com.example.backend.service.Impl.pay;

import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.CourseMapper;
import com.example.backend.mapper.CourseProblemsAcNumMapper;
import com.example.backend.mapper.CourseUserAcProblemMapper;
import com.example.backend.models.domain.course.Course;
import com.example.backend.models.domain.course.CourseUserAcProblem;
import com.example.backend.models.domain.pay.AccountFund;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.pay.LantuPayOtherRequest;
import com.example.backend.models.request.pay.LantuPayRequest;
import com.example.backend.models.vo.pay.LantuPayViewVo;
import com.example.backend.models.vo.pay.LantuPayVo;
import com.example.backend.service.pay.AccountFundService;
import com.example.backend.mapper.AccountFundMapper;
import com.example.backend.utils.OrderUtils;
import com.example.backend.utils.PaySignUtil;
import okhttp3.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.URLEncoder;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.util.*;

/**
* @author Mogullzr
* @description 针对表【account_fund】的数据库操作Service实现
* @createDate 2025-09-25 20:51:20
*/
@Service
public class AccountFundServiceImpl extends ServiceImpl<AccountFundMapper, AccountFund>
    implements AccountFundService{
    @Autowired
    private AccountFundMapper accountFundMapper;

    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private AccountFundService accountFundService;

    @Value("${lantu.mch_id}")
    private String mchId;

    @Value("${lantu.key}")
    private String key;

    @Value("${lantu.expire_time}")
    private String expireTime;

    @Value("${lantu.url}")
    private String url;

    @Value("${lantu.post_url}")
    private String postUrl;

    @Value("${lantu.refund_url}")
    private String refundUrl;

    @Autowired
    private CourseProblemsAcNumMapper courseProblemsAcNumMapper;
    @Autowired
    private CourseUserAcProblemMapper courseUserAcProblemMapper;

    @Override
    public LantuPayVo lantuPay(LantuPayRequest lantuPayRequest, User loginUser) throws IOException {

        // 0.查看课程是否存在
        QueryWrapper<Course> courseQueryWrapper = new QueryWrapper<>();
        courseQueryWrapper.eq("course_id", lantuPayRequest.getCourse_id());
        Course course = courseMapper.selectOne(courseQueryWrapper);
        if (course == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的课程");
        }

        // 0.1.查看当前用户是否报名
        QueryWrapper<CourseUserAcProblem> courseUserAcProblemQueryWrapper = new QueryWrapper<>();
        courseUserAcProblemQueryWrapper.eq("course_id", lantuPayRequest.getCourse_id());
        courseUserAcProblemQueryWrapper.eq("uuid", loginUser.getUuid());

        CourseUserAcProblem courseUserAcProblem = courseUserAcProblemMapper.selectOne(courseUserAcProblemQueryWrapper);
        if (courseUserAcProblem != null) {
            throw new BusinessException(ErrorCode.FORBIDDEN_ERROR, "请不要重复报名！！！");
        }

        // 1.生成sign
        // ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
        TreeMap<String, Object> map = new TreeMap<>(Comparator.naturalOrder());
        map.put("mch_id", mchId);
        map.put("out_trade_no", OrderUtils.generateOrderNo("BY"));
        map.put("total_fee", course.getPay().toString());
        map.put("body", "ByteOJ课程系列——" + course.getCourse_title());
        map.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
        map.put("notify_url", url);

        String sign = PaySignUtil.createSign(map, key);
        // 2.获取支付二维码获取
        AccountFund accountFund = new AccountFund();
        LantuPayVo lantuPayVo = new LantuPayVo();

        map.put("sign", sign);
        map.put("time_expire", expireTime);
        map.put("attach", "感谢您的支持！");
        String weixin_url = sendWxPayRequest(map, postUrl);
        lantuPayVo.setWeixin_url(weixin_url);
        lantuPayVo.setOut_trade_no(map.get("out_trade_no").toString());
        lantuPayVo.setFund(map.get("total_fee").toString());

        // 插入订单
        accountFund.setQq(loginUser.getEmail());
        accountFund.setFund(course.getPay().toString());
        accountFund.setOut_trade_no(map.get("out_trade_no").toString());
        accountFund.setStatus(0);
        accountFund.setUuid(loginUser.getUuid());
        accountFund.setUsername(loginUser.getUsername());
        accountFund.setCourse_id(course.getCourse_id());
        accountFundMapper.insert(accountFund);

        return lantuPayVo;
    }

    @Override
    public List<String> lantuPayBack(List<LantuPayOtherRequest> lantuPayBackRequest) {
        List<String> lantuPayBackList = new ArrayList<>();
        QueryWrapper<AccountFund> accountFundQueryWrapper = new QueryWrapper<>();

        for (int i = 0; i < lantuPayBackRequest.size(); i++) {
            LantuPayOtherRequest payBackRequest = lantuPayBackRequest.get(i);
            accountFundQueryWrapper.eq("out_trade_no", payBackRequest.getOut_trade_no()).or();
        }

        List<AccountFund> accountFunds = accountFundMapper.selectList(accountFundQueryWrapper);
        Integer lanSize = lantuPayBackRequest.size();
        Integer accountSize = accountFunds.size();

        if (!lanSize.equals(accountSize)) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "大胆！who are you？！！！！！");
        }

        for (int i = 0; i < lantuPayBackRequest.size(); i++) {
            LantuPayOtherRequest payBackRequest = lantuPayBackRequest.get(i);
            AccountFund accountFund = accountFunds.get(i);

            TreeMap<String, Object> map = new TreeMap<>(Comparator.naturalOrder());
            map.put("mch_id", mchId);
            map.put("out_trade_no", payBackRequest.getOut_trade_no());
            map.put("refund_fee", accountFund.getFund());
            map.put("out_refund_no", OrderUtils.generateOrderNo("GMV"));
            map.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));

            String sign = PaySignUtil.createSign(map, key);

            map.put("refund_desc", payBackRequest.getRefund_desc());
            map.put("sign", sign);

            if (!sendWxPayBackRequest(map, refundUrl)) {
                lantuPayBackList.add(i, "false");
            } else {
                lantuPayBackList.add(i,"true");
                accountFund.setStatus(2);
                accountFunds.set(i, accountFund);
            }
//            map.put("notify_url", url);
        }

        accountFundService.updateBatchById(accountFunds);
        return lantuPayBackList;
    }

    @Override
    public List<LantuPayViewVo> lantuPayView(String keyword, Integer pageNum, Integer pageSize) {
        Page<AccountFund> page = new Page<>(pageNum, pageSize);
        QueryWrapper<AccountFund> queryWrapper = new QueryWrapper<>();

        // 1.查找商品单号
        if (keyword != null && !keyword.isEmpty()) {
            queryWrapper.eq("out_trade_no", keyword);
        }

        Page<AccountFund> accountFundPage = accountFundMapper.selectPage(page, queryWrapper);
        List<AccountFund> records = accountFundPage.getRecords();
        Long size = accountFundPage.getPages();

        List<LantuPayViewVo> lantuPayViewVoList = new ArrayList<>();
        records.forEach(record -> {
           LantuPayViewVo lantuPayViewVo = new LantuPayViewVo();
           lantuPayViewVo.setCourse_title(record.getCourse_title());
           lantuPayViewVo.setFund(record.getFund());
           lantuPayViewVo.setOut_trade_no(record.getOut_trade_no());
           lantuPayViewVo.setStatus(record.getStatus());
           lantuPayViewVo.setUuid(record.getUuid());
           lantuPayViewVo.setQq(record.getQq());
           lantuPayViewVo.setStatus(record.getStatus());

           lantuPayViewVoList.add(lantuPayViewVo);
        });
        if (!records.isEmpty()) {
            LantuPayViewVo lantuPayViewVo = lantuPayViewVoList.get(0);
            lantuPayViewVo.setSize(size);
            lantuPayViewVoList.set(0, lantuPayViewVo);
        }

        return lantuPayViewVoList;
    }

    @Override
    public Boolean lantuPayStatus(LantuPayOtherRequest lantuPayOtherRequest) {
        String outTradeNo = lantuPayOtherRequest.getOut_trade_no();
        QueryWrapper<AccountFund> accountFundQueryWrapper = new QueryWrapper<>();
        accountFundQueryWrapper.eq("out_trade_no", outTradeNo);

        AccountFund accountFund = accountFundMapper.selectOne(accountFundQueryWrapper);
        if (accountFund == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的单号");
        } else {
            return accountFund.getStatus() == 1;
        }
    }

    /**
     * 退款请求
     * @param map 请求体
     * @param refundUrl 退款地址
     * @return 是否退款成功
     */
    private boolean sendWxPayBackRequest(TreeMap<String, Object> map, String refundUrl) {
        OkHttpClient client = new OkHttpClient();

        // 手动构建URL编码的请求体
        StringBuilder encodedBody = new StringBuilder();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!encodedBody.isEmpty()) {
                encodedBody.append("&");
            }
            encodedBody.append(URLEncoder.encode(entry.getKey(), StandardCharsets.UTF_8))
                    .append("=")
                    .append(URLEncoder.encode(entry.getValue().toString(), StandardCharsets.UTF_8));
        }

        MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded; charset=utf-8");
        RequestBody requestBody = RequestBody.create(mediaType, encodedBody.toString());

        Request request = new Request.Builder()
                .url(refundUrl)
                .post(requestBody)
                .addHeader("content-type", "application/x-www-form-urlencoded; charset=utf-8")
                .build();

        try (Response response = client.newCall(request).execute()) {
            String responseBody = response.body().string();
            System.out.println(responseBody);

            // 解析JSON响应
            JSONObject jsonResponse = JSONUtil.parseObj(responseBody);

            // 直接获取code的整数值
            Integer code = jsonResponse.getInt("code");

            // 判断code是否为0（成功）
            if (code == null) {
                throw new BusinessException(ErrorCode.OPERATION_ERROR, "API响应缺少code字段");
            }

            return code.equals(0);
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR,"请联系BOSS管理员8989561494@qq.com");
        }
    }

    /**
     * 支付请求
     *
     * @param map 请求体
     * @param apiUrl 请求地址
     * @return 微信支付二维码地址
     * @throws IOException
     */
    public String sendWxPayRequest(TreeMap<String, Object> map, String apiUrl) throws IOException {
        OkHttpClient client = new OkHttpClient();

        // 手动构建URL编码的请求体
        StringBuilder encodedBody = new StringBuilder();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!encodedBody.isEmpty()) {
                encodedBody.append("&");
            }
            encodedBody.append(URLEncoder.encode(entry.getKey(), StandardCharsets.UTF_8))
                    .append("=")
                    .append(URLEncoder.encode(entry.getValue().toString(), StandardCharsets.UTF_8));
        }

        MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded; charset=utf-8");
        RequestBody requestBody = RequestBody.create(mediaType, encodedBody.toString());

        Request request = new Request.Builder()
                .url(apiUrl)
                .post(requestBody)
                .addHeader("content-type", "application/x-www-form-urlencoded; charset=utf-8")
                .build();

        try (Response response = client.newCall(request).execute()) {
            String responseBody = response.body().string();
            System.out.println(responseBody);
            // 使用Hutool解析JSON
            JSONObject jsonResponse = JSONUtil.parseObj(responseBody);
            JSONObject data = jsonResponse.getJSONObject("data");

            // 提取QRcode_url
            return data.getStr("QRcode_url");
        } catch (Exception e) {
            throw new BusinessException(ErrorCode.SYSTEM_ERROR,"请联系BOSS管理员8989561494@qq.com");
        }
    }
}




